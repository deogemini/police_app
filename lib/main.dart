import 'package:flutter/material.dart';
import 'package:police_app/app.dart';
import 'package:police_app/app_state/UserState.dart';
import 'package:police_app/app_state/caseState.dart';
import 'package:police_app/app_state/login_state.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) 
          => LoginState()),  
 ChangeNotifierProvider(create: (_) 
          => CaseState()),  
 ChangeNotifierProvider(create: (_) 
          => UserState()),  

          // 
        ],
        child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Police App',
      home: firstPage(),
    ));
  }
}

class firstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new MyApp(),
      backgroundColor: Color(0xff1EA5FC),
      image: Image.asset('assets/policeIcon.png'),
      photoSize: 100.0,
      loaderColor: Colors.amber,
    );
  }
}
