import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

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
              decoration: InputDecoration(
                  icon: Icon(Icons.account_box),
                  hintText: "User Id",
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
            child: Text("Submit",
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          )
        ],
      ),
    ));
  }
}
