import 'package:app/modules/home/home_page.dart';
import 'package:app/modules/login/login_page.dart';
import 'package:app/modules/signup/bloc/bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userMobileController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  TextEditingController _userRePasswordController = TextEditingController();

  SignupBloc _signupBloc = SignupBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text('Sign Up'),
          ),
        ),
        body: BlocProvider(
          create: (context) => _signupBloc,
          child: BlocConsumer<SignupBloc, SignupState>(
            listener: (context, state) {
              if (state is SignupSuccess) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
              if (state is EmailExisting) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('This email already exist.')));
              }
              if (state is SignupFailed) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Signup failed. Please try again later')));
              }
            },
            builder: (context, state) {
              return SizedBox(
                child: Stack(
                  children: [
                    Lottie.asset(
                      'assets/lotties/pokemonball.json',
                      fit: BoxFit.contain,
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 230),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Register Account',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      33, // Adjust the value according to your needs
                                  height: 2, // Adjust the line height if needed
                                ),
                              ),
                            ),
                            Text('Enter your details'),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller: _userNameController,
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  labelStyle: TextStyle(
                                      color:
                                          Colors.red), // Set label text color
                                  hintText: "Enter your username",
                                  suffixIcon: Container(
                                    // Wrap the Icon with a Container
                                    child: Icon(
                                      Icons.person_outline_sharp,
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
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                ),
                                validator: (value) {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 10, right: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: _userMobileController,
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  labelText: "Phone Number",
                                  labelStyle: TextStyle(
                                      color:
                                          Colors.red), // Set label text color
                                  hintText: "Enter your phone number",
                                  suffixIcon: Container(
                                    // Wrap the Icon with a Container
                                    child: Icon(
                                      Icons.phone_outlined,
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
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 10, right: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _userEmailController,
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  labelText: "Email Address",
                                  labelStyle: TextStyle(
                                      color:
                                          Colors.red), // Set label text color
                                  hintText: "Enter your email address",
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
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 10, right: 10),
                              child: TextFormField(
                                controller: _userPasswordController,
                                obscureText: true,
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      color:
                                          Colors.red), // Set label text color
                                  hintText: "Enter your password",
                                  suffixIcon: Container(
                                    // Wrap the Icon with a Container
                                    child: Icon(
                                      Icons.lock_outline,
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
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 10, right: 10),
                              child: TextFormField(
                                controller: _userRePasswordController,
                                obscureText: true,
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  labelStyle: TextStyle(
                                      color:
                                          Colors.red), // Set label text color
                                  hintText: "Re-enter your password",
                                  suffixIcon: Container(
                                    // Wrap the Icon with a Container
                                    child: Icon(
                                      Icons.lock_outline,
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
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: SizedBox(
                                width: 150,
                                child: BlocBuilder<SignupBloc, SignupState>(
                                  builder: (context, state) {
                                    return TextButton(
                                      onPressed: () {
                                        print('welcome');

                                        context.read<SignupBloc>().add(
                                              SignupUser(
                                                  userName:
                                                      _userNameController.text,
                                                  userEmail:
                                                      _userEmailController.text,
                                                  userMobile:
                                                      _userMobileController
                                                          .text,
                                                  userPassword:
                                                      _userPasswordController
                                                          .text),
                                            );
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: Color.fromRGBO(
                                              236, 31, 52, 0.612),
                                          padding: EdgeInsets.all(16),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      child: Text(
                                        'Sign up',
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
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
