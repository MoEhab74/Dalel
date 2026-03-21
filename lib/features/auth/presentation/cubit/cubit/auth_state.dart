class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errorMessage;
  SignUpFailureState(this.errorMessage);
}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInFailureState extends AuthState {
  final String errorMessage;
  SignInFailureState(this.errorMessage);
}

final class ResetPasswordLinkLoadingState extends AuthState {}

final class ResetPasswordLinkSuccessState extends AuthState {}

final class ResetPasswordLinkFailureState extends AuthState {
  final String errorMessage;
  ResetPasswordLinkFailureState(this.errorMessage);
}

final class TermsAndConditionsCheckBoxState extends AuthState {
  final bool isChecked;
  TermsAndConditionsCheckBoxState(this.isChecked);
}

final class PasswordVisibilityState extends AuthState {
  final bool isPasswordVisible;
  PasswordVisibilityState(this.isPasswordVisible);
}
