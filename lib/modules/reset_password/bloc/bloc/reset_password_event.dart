part of 'reset_password_bloc.dart';

@immutable
sealed class ResetPasswordEvent {}

class SubmitEnteredEmail extends ResetPasswordEvent {
  final String regEmail;

  SubmitEnteredEmail({
    required this.regEmail,
  });
}
