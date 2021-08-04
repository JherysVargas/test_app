import 'package:flutter/material.dart';
import 'package:app_test/pages/home/models/user.dart';
import 'package:app_test/pages/home/repository/home.dart';

class HomeProvider with ChangeNotifier {
  bool _loading = true;
  List<UserModel> _users = [];
  UserModel _detailUser;
  HomeRepository homeRepository = HomeRepository();

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  List<UserModel> get users => _users;

  set users(List<UserModel> users) {
    _users = users;
    notifyListeners();
  }

  UserModel get detailUser => _detailUser;

  set detailUser(UserModel detailUser) {
    _detailUser = detailUser;
    notifyListeners();
  }

  void getData() async {
    List<UserModel> response = await homeRepository.getData();
    users = response;
    loading = false;
  }
}
