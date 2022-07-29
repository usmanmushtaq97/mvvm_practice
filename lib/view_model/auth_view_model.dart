import 'package:flutter/material.dart';
import 'package:mvvm_practice/repository/login_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm_practice/utiles/routes/route_name.dart';
import 'package:mvvm_practice/utiles/utiles.dart';

class AuthViewModel extends ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;
  bool _signuploadin = false;

  bool get singnuploading => _signuploadin;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value) {
    _signuploadin = value;
    notifyListeners();
  }

  final _myRepo = AuthRepository();

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.loginApi(data).then((value) {
      Utils.flushBarErrorMessage(value.toString(), context);
      setLoading(false);
      Navigator.pushNamed(context, RouteName.home);
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setLoading(false);
    });
  }

  Future<void> registerApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _myRepo.registerApi(data).then((value) {
      setSignUpLoading(false);
      Navigator.pushNamed(context, RouteName.login);
      Utils.flushBarErrorMessage("Register Successfully", context);
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
    });
  }
}
