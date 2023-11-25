import 'package:app/modules/emailOtp/bloc/emailotp_bloc.dart';
import 'package:app/modules/login/login_page.dart';
import 'package:app/modules/reset_password/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatefulWidget {
  final String? typedOtp;
  OtpPage({this.typedOtp});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  EmailotpBloc _emailotpBloc = EmailotpBloc();
  String emailOtp = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => _emailotpBloc,
        child: BlocConsumer<EmailotpBloc, EmailotpState>(
          listener: (context, state) {
            if (state is VerificationSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Center(child: Text('OTP verification success.')),
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }
            if (state is VerificationFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Center(child: Text('Invalid OTP.')),
                ),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back,
                            size: 32, color: Colors.black45),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        "assets/images/pikachu1.png",
                        width: 250,
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text('Secure Your Account',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Enter the OTP sent to your mobile number',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 145,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 255, 59),
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(colors: [
                            Colors.yellow,
                            Colors.orange,
                          ], begin: Alignment.topLeft)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OTPTextField(
                            keyboardType: TextInputType.numberWithOptions(
                              signed: false,
                              decimal: false,
                            ),
                            spaceBetween: 2,
                            length: 5,
                            width: MediaQuery.of(context).size.width * 0.75,
                            fieldWidth: 45,
                            onCompleted: (value) {
                              print('Enterd otp=$value');
                            },
                            style: TextStyle(fontSize: 17),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BlocBuilder<EmailotpBloc, EmailotpState>(
                      builder: (context, state) {
                        validateOtp(emailOtp?? '', context);
                        return ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.orangeAccent),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                side: BorderSide(
                                    color: Colors
                                        .black), // You can set the border color as needed
                              ),
                            ),
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.orangeAccent.withOpacity(0.5);
                              }
                              return Colors.transparent;
                            }),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'Verify',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      },
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            "Didn't you receive any code?",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('Resend OTP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget myInputBox(BuildContext context, TextEditingController controller) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: TextField(
        controller: controller,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 42),
        decoration: const InputDecoration(
          counterText: '',
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }

  validateOtp(String otp, BuildContext context) {
    if (otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black,
          content: Center(child: Text('Please enter the otp')),
        ),
      );
    } else if (otp != widget.typedOtp) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black,
          content: Center(child: Text('Otp doesnot match')),
        ),
      );
    } else if (otp == widget.typedOtp) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Center(child: Text('Otp verification success')),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Re()),
      );
    }
  }
}
