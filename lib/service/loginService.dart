import 'dart:convert';
import 'package:police_app/service/Shared_Preference_Service.dart';
import 'package:police_app/service/http.dart';

class LoginService {
  Future<bool> signIn(String email, String password) async {
    String url = "api/v1/auth/login";
    Map<String, dynamic> body = {"email": "$email", "password": "$password"};
    var jsonResponse;
    var res = await HttpService().httpPost(url, body);
    print(res.statusCode);
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      if (jsonResponse != null) {
        // setState(() {
        //   _isLoading = false;
        // });
        PreferenceProvider.setPreferenceValue("token", jsonResponse["token"]);
        return true;
       
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
  
  


}
