import 'package:app/modules/repository/auth.service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'resend_otp_event.dart';
part 'resend_otp_state.dart';

class ResendOtpBloc extends Bloc<ResendOtpEvent, ResendOtpState> {
  ResendOtpBloc() : super(ResendOtpInitial()) {
    on<ResendOtpEvent>((event, emit) async {
      if (event is ResendOtp) {
        Map<String, dynamic> credentials = {
          'email': event.userEmail,
        };
        print('//////////////////////');
        try {
          dynamic response = await AuthService().resendOtp(credentials);

          if (response['statusCode'] == 200) {
            print('succeess');
            emit(ResendOtpSuccess());
          }
           if (response['statusCode'] == 402 ) {
            print('succeess');
            emit(ResendOtpFailed());
          }
        } catch (e) {
          print('Error: $e');
        }
      }
    });
  }
}
