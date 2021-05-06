import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1EA5FC),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Image(
                image: AssetImage('assets/policeIcon.png'),
              ),
              Text(
                'Police Case Management System',
                style: TextStyle(color: Colors.white, height: 5, fontSize: 20),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () {},
                child: Text(
                  'Login Here',
                ),
              ),
            ],
          ),
        ));
  }
}
