import 'package:app/modules/logins/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
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
                Container(
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        fontSize: 33, height: 2, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30,),
                Text('Please create a new password for your account'),
                SizedBox(
                  height: 60,
                ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    labelText: "New Password",
                    labelStyle:
                        TextStyle(color: Colors.red), // Set label text color
                    hintText: "Enter your password",
                    suffixIcon: Container(
                      // Wrap the Icon with a Container
                      child: Icon(
                        Icons.lock_reset_outlined,
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
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle:
                        TextStyle(color: Colors.red), // Set label text color
                    hintText: "Enter your Password",
                    suffixIcon: Container(
                      // Wrap the Icon with a Container
                      child: Icon(
                        Icons.lock_reset_outlined,
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
                  height: 100,
                ),
                Container(
  child: SizedBox(
    width: 150,
    child: TextButton(
      onPressed: () {
        // Show Snackbar
        final snackBar = SnackBar(
          content: Text('Password reset successfully'),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        'Reset',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),

                // Container(
                //   child: SizedBox(
                //     width: double.infinity,
                //     child: TextButton(
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => LoginPage(),
                //           ),
                //         );
                //       },
                //       style: TextButton.styleFrom(
                //         backgroundColor: Color.fromRGBO(236, 31, 52, 0.612),
                //         padding: EdgeInsets.all(16),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //       ),
                //       child: Text(
                //         'Reset',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
