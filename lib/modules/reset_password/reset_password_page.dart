import 'package:flutter/material.dart';

class Re extends StatelessWidget {
  
   Re({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
           Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                            
                              obscureText: true,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Colors.red), // Set label text color
                                hintText: "Enter your new Password",
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
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                             
                              obscureText: true,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(
                                    color: Colors.red), // Set label text color
                                hintText: "Enter your new Password",
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
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: (){},
                             child: Text('Reset'))
        ],),
      ),
    );
  }
}