import 'package:app/modules/home/home_page.dart';
import 'package:app/modules/login/bloc/bloc/login_bloc.dart';
import 'package:app/modules/reset_password/forgot_password.dart';
import 'package:app/modules/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }
            if (state is LoginFailed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Login failed. Please try again later.')));
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
                      padding: const EdgeInsets.only(top: 250),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Welcome back',
                              style: TextStyle(
                                  fontSize: 33,
                                  height: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text('Sign in with your email and password'),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 10, right: 10),
                            child: TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    color: Colors.red), // Set label text color
                                hintText: "Enter your email id",
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
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Colors.red), // Set label text color
                                hintText: "Enter your Password",
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
                            height: 40,
                          ),
                          Container(
                            child: SizedBox(
                              width: 150,
                              child: BlocBuilder<LoginBloc, LoginState>(
                                builder: (context, state) {
                                  return TextButton(
                                    onPressed: () {
                                      ;
                                      if (_emailController.text.isEmpty &&
                                          _emailController.text.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'Please enter your email and password.')));
                                      }
                                      context.read<LoginBloc>().add(UserLogin(
                                          loginEmail: _emailController.text,
                                          loginPassword:
                                              _passwordController.text));
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
                                      'Login',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text("Don't have an account?"),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignupPage(),
                                          ));
                                    },
                                    child: Text(
                                      'sign up',
                                      style: TextStyle(
                                        color:
                                            Color.fromRGBO(236, 31, 52, 0.612),
                                      ),
                                      // selectionColor: Color.fromRGBO(236, 31, 52, 0.612),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ForgotPassword(),
                                    ));
                              },
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  color: Color.fromRGBO(236, 31, 52, 0.612),
                                ),
                                // selectionColor: Color.fromRGBO(236, 31, 52, 0.612),
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
      ),
    );
  }
}
