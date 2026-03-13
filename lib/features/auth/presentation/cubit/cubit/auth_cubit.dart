import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late String? firstName;
  late String? lastName;
  late String? emailAddress;
  late String? password;

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          emit(SignUpFailureState('The password provided is too weak.'));
          break;
        case 'email-already-in-use':
          emit(
            SignUpFailureState('The account already exists for that email.'),
          );
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
    } catch (e) {
      emit(
        SignUpFailureState(
          'An unexpected error occurred. Please try again later.',
        ),
      );
    }
  }
}
