import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back, size: 32, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    'assets/images/pokemon.jpeg',
                    width: 250,
                    height: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Secure Your Account', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Enter the code sent to your mobile number',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(28),
                  height: 145,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 255, 59),
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(colors: [
                      Colors.yellow,
                      Colors.orange,
                    ],
                    begin: Alignment.topLeft,
      end: Alignment.bottomRight,),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _textFieldOTP(first: true, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: true),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
        side: BorderSide(color: Colors.black), // You can set the border color as needed
      ),
    ),
    overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
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
),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Text(
                        "Didn't you receive any OTP?",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black38),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(onPressed: () {
                        
                      }, child:Text('Resend OTP',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
  return Container(
    height: 60, // Adjust the height as needed
    child: AspectRatio(
      aspectRatio: 1.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 4), // Add vertical padding
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context as BuildContext).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context as BuildContext).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            contentPadding: EdgeInsets.zero, // Remove default content padding
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    ),
  );
}}