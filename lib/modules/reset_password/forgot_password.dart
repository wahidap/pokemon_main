import 'package:app/modules/emailOtp/emailOtp_page.dart';
import 'package:app/modules/login/bloc/bloc/login_bloc.dart';
import 'package:app/modules/login/login_page.dart';
import 'package:app/modules/reset_password/bloc/bloc/reset_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

    TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: BlocProvider(
        create: (context) => ResetPasswordBloc(),
        child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
          listener: (context, state) {
          if(state is OtpSent){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content:
                      Center(child: Text('OTP has been sent to your registered email.')),
                ),
            );
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OtpPage()
                ),
              );
          }
          
                 if(state is EmailNotFound){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content:
                      Center(child: Text('Email not found')),
                ),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Lottie.asset(
                    'assets/lotties/pokemonball.json',
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 210,
                        ),
                        Container(
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                                fontSize: 33,
                                height: 2,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text('Please create a new password for your account'),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: _emailController,
                           
                            style: TextStyle(fontSize: 12),
                            decoration: InputDecoration(
                              labelText: "Registered email address",
                              labelStyle: TextStyle(
                                  color: Colors.red), // Set label text color
                              hintText: "Enter your registered email address",
                              suffixIcon: Container(
                                // Wrap the Icon with a Container
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Color.fromARGB(255, 101, 101,
                                      101), // Set the desired icon color
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 16,
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                            ),
                          ),
                        ),
                       SizedBox(
                        height: 30,
                       ),
                        Container(
                          child: SizedBox(
                            width: 150,
                            child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                              builder: (context, state) {
                                return TextButton(
                                  onPressed: () {
                                   
                                     if(_emailController.text.isEmpty){
                                       ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                
                  content:
                      Center(child: Text('Enter your registered email.')),
                ),
            );
                                     }
                                   context.read<ResetPasswordBloc>().add(SubmitEnteredEmail(
                                    regEmail: _emailController.text,
                                    
                                 ));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(236, 31, 52, 0.612),
                                    padding: EdgeInsets.all(16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    'Reset',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
