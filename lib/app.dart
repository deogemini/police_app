import 'package:flutter/material.dart';
import 'package:police_app/app_state/login_state.dart';
import 'package:police_app/home.dart';
import 'package:police_app/loginscreen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onLoginStatus();
  }

  onLoginStatus() async {
    await Provider.of<LoginState>(context, listen: false).onSetLoginStatus();
    if (Provider.of<LoginState>(context, listen: false).loginStatus) {
      return Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => home()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xff1EA5FC),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 60),
              Container(
                height: 189,
                width: 144,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/policeIcon.png'),
                        fit: BoxFit.cover)),
              ),
              Text(
                'PCMS',
                style: TextStyle(
                    color: Colors.white,
                    height: 5,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-serif'),
              ),
              SizedBox(
                height: 70,
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
            ],
          ),
        ));
  }
}
