import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../../apis.dart';

class AuthService {
  Future<dynamic> registerUser(dynamic userData) async {
    try {
      dynamic response = await http.post(
          Uri.parse('http://192.168.0.101:3000/signup'),
          headers: {'Content-Type': 'application/json'},
          // since the type of data we are passing is json, we will give the content type as json
          body: json.encode(userData));

      // Encoding the collected data from Map to json.
      // Passing this json Data to the server which will be then passed to the database.
// The result from the database will be passed to the response variable
      dynamic responseObj = json.decode(response.body);
      print('***************************');
      print(responseObj);
// decoding the response from json to map and taking its body only, as body contains the data,statuscode etc.
      return responseObj;
    } catch (e) {
      print(e);
      print('ERRROORRR');
    }
  }

  //  Future<dynamic> verifyOtp(dynamic credentials) async {
  //   dynamic response = await http.post(
  //     Uri.parse('$baseUrl/signup/verify-email'),
  //     headers: {'Content-Type': 'application/json'},
  //       body: json.encode(credentials)
  //   );
  //    dynamic responseObj = json.decode(response.body);
  //   return responseObj;
  // }

  Future<dynamic> userLogin(dynamic credentials) async {
    dynamic response = await http.post(Uri.parse('$baseUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(credentials));
    dynamic responseObj = json.decode(response.body);
    return responseObj;
  }
  Future<dynamic> resetPassword(dynamic newPasswordCredentials) async {
    dynamic response = await http.post(Uri.parse('$baseUrl/resetPassword'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(newPasswordCredentials));
    dynamic responseObj = json.decode(response.body);
    return responseObj;
  }

  //  Future<dynamic> resendOtp(dynamic credentials) async {
  //   dynamic response = await http.post(
  //     Uri.parse('$baseUrl/signup/resend-otp'),
  //     headers: {'Content-Type': 'application/json'},
  //       body: json.encode(credentials)
  //   );
  //    dynamic responseObj = json.decode(response.body);
  //   return responseObj;
  // }
}
