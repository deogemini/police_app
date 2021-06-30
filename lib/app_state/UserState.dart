import 'package:flutter/widgets.dart';
import 'package:police_app/model/user.dart';
import 'package:police_app/service/getUser.dart';

class UserState extends ChangeNotifier {
  User _currentUser;

  User get currentUser => _currentUser;

  Future<void> onGetUser() async {
    _currentUser = await UserDetailsService().getUserDetail();
    print('users');
    print(_currentUser.id);
    notifyListeners();
  }
}
