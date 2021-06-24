import 'package:flutter/material.dart';
import 'package:police_app/model/case.dart';
import 'package:police_app/viewcases.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  Future<List<CaseDetails>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
       
            child: FutureBuilder<List<CaseDetails>>(
                future: futureData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<CaseDetails> data = snapshot.data;
                    // print(data[0].casenumber);
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    data[index].casenumber == null? 'Loading..':data[index].casenumber,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  trailing: Text(
                                    data[index].immediateAction,
                                     style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
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
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  // By default show a loading spinner.
                  return LinearProgressIndicator();
                }));
  }
}
