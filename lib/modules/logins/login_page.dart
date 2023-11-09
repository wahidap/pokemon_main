import 'package:app/modules/home/home_page.dart';
import 'package:app/modules/logins/forgot_password.dart';
import 'package:app/modules/logins/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        child: Stack(
          children: [
            Lottie.asset(
              'assets/lotties/pokemonball.json',
              fit: BoxFit.contain,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                            fontSize: 33, height: 2, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Sign in with your phone number and password'),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.red), // Set label text color
                      hintText: "Enter your username",
                      suffixIcon: Container( // Wrap the Icon with a Container
                    child: Icon(
                      Icons.person_outline_sharp,
                      color: Color.fromARGB(255, 101, 101, 101), // Set the desired icon color
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
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.red), // Set label text color
                        hintText: "Enter your Password",
                        suffixIcon: Container(
                          // Wrap the Icon with a Container
                          child: Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(
                                255, 101, 101, 101), // Set the desired icon color
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
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: SizedBox(
                        width: 150,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(236, 31, 52, 0.612),
                            padding: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
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
                                  color: Color.fromRGBO(236, 31, 52, 0.612),
                                ),
                                // selectionColor: Color.fromRGBO(236, 31, 52, 0.612),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
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
      ),
    );
  }
}
