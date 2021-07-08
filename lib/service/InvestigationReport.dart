//create by Deogratias gemini
import 'dart:convert';
import 'package:police_app/model/investigationReport.dart';
import 'package:police_app/service/http.dart';

class InvestigationReportService {
  // Future<InvestigationReport> createIR(
  //     {String caseid, Map<String, dynamic> bodyData}) async {
  //   String url = "api/v1/cases/" + caseid + "/investigationReports";
  //   Map<String, dynamic> body = {
  //     "propertyStolen": 'bodyData',
  //     "ifStolenproperty": "ifStolenproperty",
  //     "investigationOfficer": "investigationOfficer",
  //     "categoryOfOffence": "categoryOfOffence",
  //     "remarks": "remarks",
  //     "description": "description",
  //     "court": "court"
  //   };
  //   var jsonResponse;
  //   var res = await HttpService().httpPost(url, body);
  //   if (res.statusCode == 200) {
  //     return jsonResponse = json.decode(res.body);
  //   } else {
  //     throw Exception('Failed');
  //   }

  Future submit(
      String id,
      // bool propertyStolen,
      String investigationOfficer,
      String categoryoffence,
      // bool courts,
      String descriptions,
      String remarks,
      String offence,
      String section,
      String ifstolenpropert) async {
    String url = "api/v1/cases/$id/investigationReports";

    Map<String, dynamic> body = {
      // "propertyStolen": propertyStolen,
      "ifStolenproperty": ifstolenpropert,
      "investigationOfficer": investigationOfficer,
      "categoryOfOffence": categoryoffence,
      "offence": offence,
      "section": section,
      "remarks": remarks,
      "description": descriptions,
      // "court": courts
    };

    var jsonResponse;
    var res = await HttpService().httpPost(url, body);
    if (res.statusCode == 200) {
      print(res.statusCode);
      return jsonResponse = json.decode(res.body);
    } else {
      print(res.statusCode);

      throw Exception('Failed');
    }
  }

  Future<InvestigationReport> updateInvestigationReport(
      InvestigationReport investigationReport) async {
    String url = "api/v1/cases/investigationReports/" + investigationReport.id;
    Map<String, dynamic> body = {
      // "propertyStolen": investigationReport.ifStolenproperty,
      // "ifStolenproperty": ifstolenpropert,
      // "investigationOfficer": investigationOfficer,
      "categoryOfOffence": investigationReport.categoryOfOffence,
      "description": investigationReport.description,
      "remarks": investigationReport.remarks,
      "section": investigationReport.section,
      "offence": investigationReport.offence,
      "ifstolen": investigationReport.ifStolenproperty

      // "offence": offence,
      // "remarks": remarks,

      // "court": courts
    };
    var res = await HttpService().httpPut(url, body);

    if (res.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return InvestigationReport.fromJson(jsonDecode(res.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to update Investigation.');
    }
  }
}
