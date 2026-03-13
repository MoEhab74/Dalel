class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errorMessage;
  SignUpFailureState(this.errorMessage);
}

final class TermsAndConditionsCheckBoxState extends AuthState {
  final bool isChecked;
  TermsAndConditionsCheckBoxState(this.isChecked);
}

final class PasswordVisibilityState extends AuthState {
  final bool isPasswordVisible;
  PasswordVisibilityState(this.isPasswordVisible);
}
