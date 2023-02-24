import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class FunctionsProvider extends ChangeNotifier {
  bool loginOrRegister = true;

  void changeLoginToRegister() {
    loginOrRegister = !loginOrRegister;
    notifyListeners();
  }

  bool buttonInLoading = false;

  void login(BuildContext context, email, password) async {
    buttonInLoading = true;
    notifyListeners();
    try {
      await context.read<AuthProvider>().login(email.text, password.text);
      buttonInLoading = false;
      notifyListeners();
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
      buttonInLoading = false;
      notifyListeners();
    }
  }

  void register(
      BuildContext context, String email, String password, String name) async {
    buttonInLoading = true;
    notifyListeners();
    try {
      await context.read<AuthProvider>().register(email, password, name);
      buttonInLoading = false;
      notifyListeners();
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
      buttonInLoading = false;
      notifyListeners();
    }
  }
}
