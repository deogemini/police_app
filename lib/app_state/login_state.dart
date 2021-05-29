import 'package:flutter/widgets.dart';
import 'package:police_app/service/Shared_Preference_Service.dart';
import 'package:police_app/service/loginService.dart';

class LoginState extends ChangeNotifier {
  bool _isLoading;
  bool _isAuth;
  bool _loginStatus;

  bool get isLoging => _isLoading ?? false;
  bool get isAuth => _isAuth ?? false;
  bool get loginStatus => _loginStatus ?? false;

  Future onLogin(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    if (await LoginService().signIn(email, password)) {
      _isLoading = false;
      _isAuth = true;
      notifyListeners();
    } else {
      _isLoading = false;
      _isAuth = false;
      notifyListeners();
    }
  }

 Future onSetLoginStatus() async {
    String token = await PreferenceProvider.getPreferenceValue("token");
    if (token.isNotEmpty  || token.length > 1) {
      _loginStatus = true;
      notifyListeners();
    } else {
      _loginStatus = false;
      notifyListeners();
    }
  }
}
