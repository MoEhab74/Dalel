import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();
  bool? termsAndConditionsCheckBoxValue = false;
  bool isPasswordVisible = false;

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfileToFirestore();
      await verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      _handleFirebaseSignUpException(e);
    } catch (e) {
      emit(
        SignUpFailureState(
          'An unexpected error occurred. Please try again later.',
        ),
      );
    }
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      _handleFirebaseSignInException(e);
      log(e.toString());
    } catch (e) {
      emit(SignInFailureState(e.toString()));
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> resetPasswordLink() async {
    try {
      emit(ResetPasswordLinkLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordLinkSuccessState());
    } on FirebaseAuthException catch (e) {
      _handleFirebaseResetPasswordLinkException(e);
      log(e.toString());
    } catch (e) {
      emit(ResetPasswordLinkFailureState(e.toString()));
    }
  }

  Future<void> addUserProfileToFirestore() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    final user = <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'emailAddress': emailAddress,
    };
    await users
        .doc(emailAddress)
        .set(user)
        .then((value) => log('User profile added to Firestore'))
        .catchError(
          (error) => log('Failed to add user profile to Firestore: $error'),
        );
  }

  void updateTermsAndConditionsCheckBoxValue({required bool newValue}) {
    termsAndConditionsCheckBoxValue = newValue;
    emit(TermsAndConditionsCheckBoxState(termsAndConditionsCheckBoxValue!));
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(PasswordVisibilityState(isPasswordVisible));
  }

  void _handleFirebaseSignUpException(FirebaseAuthException e) {
    switch (e.code) {
      case 'weak-password':
        emit(SignUpFailureState('The password provided is too weak.'));
        break;
      case 'email-already-in-use':
        emit(SignUpFailureState('The account already exists for that email.'));
        break;
      case 'invalid-email':
        emit(SignUpFailureState('The email address is not valid.'));
        break;
      case 'network-request-failed':
        emit(
          SignUpFailureState(
            'A network error has occurred. Please check your internet connection and try again.',
          ),
        );
        break;
      default:
        emit(
          SignUpFailureState(
            'An unexpected error occurred. Please try again later.',
          ),
        );
    }
  }

  void _handleFirebaseSignInException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        emit(SignInFailureState('No user found for that email.'));
        break;
      case 'wrong-password':
        emit(SignInFailureState('Wrong password provided for that user.'));
        break;
      case 'invalid-email':
        emit(SignInFailureState('The email address is not valid.'));
        break;
      case 'network-request-failed':
        emit(
          SignInFailureState(
            'A network error has occurred. Please check your internet connection and try again.',
          ),
        );
        break;
      default:
        emit(SignInFailureState(e.toString()));
    }
  }

  void _handleFirebaseResetPasswordLinkException(FirebaseAuthException e) {
    switch (e.code) {
      case 'auth/invalid-email':
        emit(ResetPasswordLinkFailureState('The email address is not valid.'));
        break;
      case 'auth/user-not-found':
        emit(ResetPasswordLinkFailureState('No user found for that email.'));
        break;
      default:
        emit(ResetPasswordLinkFailureState(e.toString()));
    }
  }
}
