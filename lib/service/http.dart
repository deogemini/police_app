import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };
  final String baseUrl = "http://pcase-api.herokuapp.com/";

  Future<http.Response> httpGet(String secondaryUrl) async {
    var url = Uri.parse(baseUrl+secondaryUrl);
    http.Response response = await http.get(url, headers: headers);
    return response;
  }

  Future<http.Response> httpPost(
      String secondaryUrl, Map<String, dynamic> postData) async {
          var url = Uri.parse(baseUrl+secondaryUrl);
    http.Response response =
        await http.post(url, headers: headers, body: json.encode(postData));
    return response;
  }
}
