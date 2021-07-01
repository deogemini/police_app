import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:police_app/service/Shared_Preference_Service.dart';

class HttpService {
  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };
  // final String baseUrl = "http://pcase-api.herokuapp.com/";
  final String baseUrl = "http://34.89.243.136/";

  Future<http.Response> httpGet(String secondaryUrl) async {
    var url = Uri.parse(baseUrl + secondaryUrl);
    headers.addAll({
      "Authorization":
          "Bearer " + await PreferenceProvider.getPreferenceValue("token")
    });

    print(headers);
    http.Response response = await http.get(url, headers: headers);
    return response;
  }

  Future<http.Response> httpPost(
      String secondaryUrl, Map<String, dynamic> postData) async {
    var url = Uri.parse(baseUrl + secondaryUrl);
    // headers.addAll({
    //   "Authorization":
    //       "Bearer " + await PreferenceProvider.getPreferenceValue("token")
    // });

    // print(headers);
    http.Response response =
        await http.post(url, headers: headers, body: json.encode(postData));
    return response;
  }
}
