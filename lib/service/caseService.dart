import 'dart:convert';

import 'package:police_app/model/case.dart';
import 'package:police_app/model/investigationReport.dart';
import 'package:police_app/service/http.dart';
import 'package:http/http.dart' as http;

class CaseService {
  Future<List<CaseDetails>> fetchData() async {
    http.Response response = await HttpService().httpGet("api/v1/cases");
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

  Future<List<InvestigationReport>> fetchIndividualData(String id) async {
    print("id is " + id);
    List<InvestigationReport> investigationReportCase = [];
    http.Response response =
        await HttpService().httpGet("api/v1/cases/$id/investigationReports");
    print(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      List<dynamic> jsonResponse = map["data"];
      for (dynamic data in jsonResponse) {
        investigationReportCase.add(InvestigationReport.fromJson(data));
      }
      return investigationReportCase;
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
