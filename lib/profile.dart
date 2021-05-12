import 'package:flutter/material.dart';
import 'package:police_app/loginscreen.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Opacity(
          opacity: 0.3,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/policeIcon.png",
              ),
            )),
          )),
      Container(
        padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
        child: Column(children: <Widget>[
          Container(
            child: Text('Profile Details Coming Soon',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          TextButton(
            child: Text("Login Here",
                style: TextStyle(fontSize: 17, color: Colors.white)),
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.fromLTRB(69, 0, 69, 0)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff03002E)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
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
        ]),
      )
    ]));
  }
}
