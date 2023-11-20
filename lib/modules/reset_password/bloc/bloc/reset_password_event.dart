part of 'reset_password_bloc.dart';

@immutable
sealed class ResetPasswordEvent {}

class ResertUserPassword extends ResetPasswordEvent {
    final String regEmail;
  final String newpassword;
  final String confirmPassword;

  ResertUserPassword({
    required this.regEmail,
    required this.newpassword,
    required this.confirmPassword
  });
}
