import 'package:flutter/material.dart';
import 'package:police_app/app_state/caseState.dart';
import 'package:police_app/model/case.dart';
import 'package:police_app/viewcases.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';

class Cards extends StatefulWidget {
  const Cards({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  Future<List<CaseDetails>> fetchData() async {
    final response = await http
        .get(Uri.parse('https://pcase-api.herokuapp.com/api/v1/cases'));
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      List<dynamic> jsonResponse = map["data"];
      // List jsonResponse = json.decode(response.body);
      return jsonResponse
          .map((data) => new CaseDetails.fromJson(data))
          .toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

  void onIniFetch() async {
    await Provider.of<CaseState>(context, listen: false).onGetCasesLists();
  }

  // Future<List<CaseDetails>> futureData;

  @override
  void initState() {
    super.initState();
    // futureData = fetchData();
    onIniFetch();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CaseState>(
      builder: (BuildContext context, caseState, child) {
        List<CaseDetails> data = caseState.caseDetailsLists;
        return Container(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      await caseState.onSetCurrentCase(data[index]);
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
                              data[index].immediateAction == null?'Data Not Found':data[index].immediateAction,
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
                }
                ));
                
      },
      
    );
  }
}
