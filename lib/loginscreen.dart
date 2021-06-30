import 'package:flutter/material.dart';
import 'package:police_app/app_state/login_state.dart';
import 'package:police_app/home.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<LoginState>(
        builder: (BuildContext context, loginState, child) {
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
                      icon: const Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: const Icon(Icons.lock)),
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                      _passwordVisible
                      ?Icons.visibility
                      :Icons.visibility_off
                      ),
                      onPressed:(){
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      }),
                      border: InputBorder.none)),
            ),
            SizedBox(
              height: 90,
            ),
            loginState.isLoging
                ? LinearProgressIndicator(
                  backgroundColor: Colors.deepOrange,
                )
                : TextButton(
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
                    onPressed:
                        emailController.text == "" || passController.text == ""
                            ? null
                            : () async {
                                await loginState.onLogin(
                                    emailController.text, passController.text);

                                if (loginState.isAuth) {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                               home()),
                                      (Route<dynamic> route) => false);
                                } else {}
                              })
          ],
        ),
      ));
    });
  }
}
