import 'package:flutter/material.dart';
import 'package:police_app/viewcases.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cards extends StatefulWidget {
  const Cards({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  Future getUserData() async {
    var res = await http
        .get(Uri.parse('https://pcase-api.herokuapp.com/api/v1/cases'));

    //map the response since it contains array format in json body
    Map<String, dynamic> map = jsonDecode(res.body);
    List<dynamic> jsonData = map["data"];
    print(jsonData);

    List<caseDetails> casedetails = [];

    for (var u in jsonData) {
      caseDetails casedetail =
          caseDetails(u["description"], u["caseNumber"], u["immeadteAction"]);
      casedetails.add(casedetail);

      print(u["name"]);
    }
    print(casedetails.length);
    return casedetails;
  }

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
          child: FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Center(
                    child: Text('Loading.....'),
                  );
                } else
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(snapshot.data[i].caseNumber),
                        subtitle: Text(snapshot.data[i].description),
                        trailing: Text(snapshot.data[i].immeadteAction),
                      );
                    },
                  );
                // Column(
                //   mainAxisSize: MainAxisSize.min,
                //   children: <Widget>[
                //     const ListTile(
                //         title: Text(
                //             '82189291                                        09/12/2020',
                //             style: TextStyle(
                //               fontSize: 15,
                //               fontWeight: FontWeight.bold,
                //             ))),
                //     Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: <Widget>[
                //           Padding(
                //             padding: EdgeInsets.fromLTRB(14, 7, 14, 0),
                //             child: Container(
                //               width: 315,
                //               child: Text(
                //                 'Mama anamshutumu Mussa kuuza kuku  bila ridhaa jkbjbjb jbjjb jbbjb hvvh mjjbjbjhb hjjhvj jhv hjvjv gcgcggb',
                //                 overflow: TextOverflow.ellipsis,
                //                 style: TextStyle(
                //                     fontSize: 13,
                //                     fontWeight: FontWeight.normal,
                //                     letterSpacing: -0.33),
                //               ),
                //             ),
                //           ),
                //         ]),
                //   ],
                // ),
              })),
    ));
  }
}

class caseDetails {
  final String description, caseNumber, immeadteAction;
  caseDetails(this.description, this.caseNumber, this.immeadteAction);
}

// class Cards extends StatelessWidget {
//   const Cards({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => viewCase()),
//             );
//           },
//           child: Card(
//             borderOnForeground: true,
//             shadowColor: Colors.blue,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 const ListTile(
//                     title: Text(
//                         '82189291                                        09/12/2020',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                         ))),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(14, 7, 14, 0),
//                         child: Container(
//                           width: 315,
//                           child: Text(
//                             'Mama anamshutumu Mussa kuuza kuku  bila ridhaa jkbjbjb jbjjb jbbjb hvvh mjjbjbjhb hjjhvj jhv hjvjv gcgcggb',
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.normal,
//                                 letterSpacing: -0.33),
//                           ),
//                         ),
//                       ),
//                     ]),
//               ],
//             ),
//           )),
//     );
//   }
// }
