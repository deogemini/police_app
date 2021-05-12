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
          )))),
      Container(
          padding: EdgeInsets.fromLTRB(30, 100, 24, 100),
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110.0),
                  child: Text(
                    'Juma Juma',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 22),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Number',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Text(
                    'PS33223',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 22),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Text(
                    'Male',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 22),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Station',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: Text(
                    'Osterbay',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 22),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Role',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Text(
                    'Mpelelezi',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 22),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
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
          ]))
    ]));
  }
}
