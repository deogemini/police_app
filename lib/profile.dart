import 'package:flutter/material.dart';
import 'package:police_app/app_state/UserState.dart';
import 'package:police_app/loginscreen.dart';
import 'package:police_app/model/user.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  onInit() async {
    await Provider.of<UserState>(context, listen: false).onGetUser();
  }

  @override
  void initState() {
    onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserState>(
      builder: (BuildContext context, userState, child) {
        User user = userState.currentUser;
        if (user == null) {
          return 
          Center(
            child: CircularProgressIndicator(
              strokeWidth: 3,
         backgroundColor: Colors.blueAccent,
              color: Colors.amber,
              
            ),
          );
        } else
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
            SingleChildScrollView(
              child: Card(
                child: Container(
                    width: MediaQuery.of(context).size.width / 0.8,
                    padding: EdgeInsets.fromLTRB(30, 80, 24, 100),
                    child: Column(children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blueGrey,
                        child: Icon(
                          Icons.person,
                          size: 100,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      ),
                      Divider(
                        height: 50,
                        thickness: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100.0),
                            child: Text(
                              user.name == null ? 'No Data Found' : user.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 22),
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
                            'Title',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120.0),
                            child: Text(
                              user.title == null ? 'No data Found' : user.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 22),
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
                            'Email',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0),
                            child: Text(
                              user.email == null ? 'No Data Found' : user.email,
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 22),
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
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 130.0),
                            child: Text(
                              'Osterbay',
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 22),
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
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150.0),
                            child: Text(
                              user.role == null ? 'No Data Found' : user.role,
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextButton(
                        child: Text("Logout here",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white)),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(69, 0, 69, 0)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff03002E)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                      )
                    ])),
              ),
            )
          ]));
      },
    );
  }
}
