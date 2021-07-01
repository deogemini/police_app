import 'package:flutter/material.dart';
import 'package:police_app/app_state/caseState.dart';
import 'package:police_app/model/case.dart';
import 'package:police_app/viewcases.dart';
import 'package:provider/provider.dart';

class Cards extends StatefulWidget {
  const Cards({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  void onIniFetch() async {
    await Provider.of<CaseState>(context, listen: false).onGetCasesLists();
  }

  @override
  void initState() {
    super.initState();

    onIniFetch();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CaseState>(
      builder: (BuildContext context, caseState, child) {
        List<CaseDetails> data = caseState.caseDetailsLists;
        if (data.isEmpty) {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
            ),
          );
        } else
          return Container(
            child: AnimatedList(
                initialItemCount: data.length,
                itemBuilder: (context, index, Animation) {
                  return GestureDetector(
                    onTap: () async {
                      await caseState.onSetCurrentCase(data[index]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => viewCase()),
                      );
                    },
                    child: Card(
                      clipBehavior: Clip.none,
                      borderOnForeground: true,
                      shadowColor: Colors.blue,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                                data[index].casenumber == null
                                    ? 'Data Not Found'
                                    : data[index].casenumber,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            trailing: Text(
                                data[index].immediateAction == null
                                    ? 'Data Not Found'
                                    : data[index].immediateAction,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            subtitle: Text(
                              data[index].description,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: -0.33),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );

                  // By default show a loading spinner.
                  // return LinearProgressIndicator();
                }),
          );
      },
    );
  }
}
