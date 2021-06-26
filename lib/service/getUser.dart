import 'dart:convert';
import 'package:police_app/service/http.dart';
import 'package:police_app/model/user.dart';

class UserDetailsService {
  Future<User> getUserDetail() async {
    String url = "api/v1/auth/me";
    var res = await HttpService().httpGet(url);

    if (res.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      
      return User.fromJson(jsonDecode(res.body)['data']);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(res.body);
    }
  }

  //   getUserDetails() async{
  //    String url = "api/v1/auth/me";
  //   var res = await http.get(Uri.https('http://pcase-api.herokuapp.com/', url));
  //  }
}
