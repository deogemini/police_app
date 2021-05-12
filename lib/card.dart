import 'package:flutter/material.dart';
import 'package:police_app/viewcases.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          borderOnForeground: true,
          shadowColor: Colors.blue,
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
    );
  }
}
