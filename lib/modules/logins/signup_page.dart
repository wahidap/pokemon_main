import 'package:app/modules/logins/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
        body: SizedBox(
          child: Stack( 
            children: [
              Lottie.asset(
                'assets/lotties/pokemonball.json',
                fit: BoxFit.contain,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
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
                      Text('Enter you details'),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle:
                              TextStyle(color: Colors.red), // Set label text color
                          hintText: "Enter your username",
                          suffixIcon: Container(
                            // Wrap the Icon with a Container
                            child: Icon(
                              Icons.person_outline_sharp,
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
                        height: 10,
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          labelText: "phone Number",
                          labelStyle:
                              TextStyle(color: Colors.red), // Set label text color
                          hintText: "Enter your phone number",
                          suffixIcon: Container(
                            // Wrap the Icon with a Container
                            child: Icon(
                              Icons.phone_outlined,
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
                        height: 10,
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          labelStyle:
                              TextStyle(color: Colors.red), // Set label text color
                          hintText: "Enter your Email Address",
                          suffixIcon: Container(
                            // Wrap the Icon with a Container
                            child: Icon(
                              Icons.email_outlined,
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
                        height: 10,
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
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle:
                              TextStyle(color: Colors.red), // Set label text color
                          hintText: "Re-enter your password",
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
                        height: 40,
                      ),
                      Container(
                        child: SizedBox(
                          width: 150,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(236, 31, 52, 0.612),
                              padding: EdgeInsets.all(16),
                              shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                                
                              )
                            ),
                            child: Text(
                              'Sign up',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
