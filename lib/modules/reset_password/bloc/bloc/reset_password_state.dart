part of 'reset_password_bloc.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}
final class OtpSent extends ResetPasswordState {}
final class EmailNotFound extends ResetPasswordState {}
