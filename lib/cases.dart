import 'package:flutter/material.dart';
import 'package:police_app/viewcases.dart';

class Cases extends StatefulWidget {
  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
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
        ))),
      ),
      Container(
        child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          const ListTile(
            title: Text(
                '82189291                                        09/12/2020'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                child: const Text(
                    'fwnkfnfkjrnjbefbhhjbjbewbbbfqehbbqbeqbhhqefrbq'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => viewCase()),
                  );
                },
              ),
            ],
          ),
        ])),
      )
    ]));
  }
}
