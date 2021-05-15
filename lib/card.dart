import 'package:flutter/material.dart';
import 'package:police_app/viewcases.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => viewCase()),
            );
          },
          child: Card(
            borderOnForeground: true,
            shadowColor: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                    title: Text(
                        '82189291                                        09/12/2020',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ))),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(14, 7, 14, 0),
                        child: Text(
                          'Mama anamshutumu Mussa kuuza kuku  bila ridhaa',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              letterSpacing: -0.33),
                        ),
                      ),
                    ]),
              ],
            ),
          )),
    );
  }
}
