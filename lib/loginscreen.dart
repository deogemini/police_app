import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:police_app/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  signIn(String email, String password) async {
    var url = Uri.parse("http://pcase-api.herokuapp.com/api/v1/auth/login");
    SharedPreferences sharedPrefences = await SharedPreferences.getInstance();
    Map body = {"email": email, "password": password};
    var jsonResponse;
    var res = await http.post(url, body: body);
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);

      print("Response status: ${res.statusCode}");

      print("Response status: ${res.body}");

      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });

        sharedPrefences.setString("token", jsonResponse["token"]);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => home()),
            (Route<dynamic> route) => false);
      } else {
        setState(() {
          _isLoading = false;
        });
        print("Response status: ${res.body}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: size.height,
      padding: EdgeInsets.all(12),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 75,
          ),
          Image.asset(
            "assets/policeIcon.png",
            width: 90,
            height: 100,
          ),
          SizedBox(
            height: 67,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: Color(0xffcff7fa),
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  icon: Icon(Icons.account_box),
                  hintText: "Username",
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: Color(0xffcff7fa),
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                    border: InputBorder.none)),
          ),
          SizedBox(
            height: 90,
          ),
          TextButton(
              child: Text("Login here",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.fromLTRB(69, 0, 69, 0)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff03002E)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
              ),
              onPressed: emailController.text == "" || passController.text == ""
                  ? null
                  : () {
                      setState(() {
                        _isLoading = true;
                      });
                      signIn(emailController.text, passController.text);
                    })
        ],
      ),
    ));
  }
}
