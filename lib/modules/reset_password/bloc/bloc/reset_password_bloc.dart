import 'package:app/modules/repository/auth.service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordInitial()) {
    on<ResetPasswordEvent>((event, emit) async  {
    if(event is ResertUserPassword){
Map<String,dynamic> newpasswordData = {
  'new password':event.newpassword,
  'confirmed password':event.confirmPassword
};
try {
          dynamic response = await AuthService().resetPassword(newpasswordData);

          // passing the collected data(now in map type) to the repository/AuthService
          print('Response: $response');
          if (response['statusCode'] == 201) {
            emit(ResetPasswordSuccess());
          }
          if (response['statusCode'] == 409) {
            print('email taken');
            emit(ResetPasswordFailed());
          }
        } catch (e) {
          print('Error: $e');
        }
    }
    });
  }
}
