import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class FunctionsProvider extends ChangeNotifier {
  bool loginOrRegister = true;

  void changeLoginToRegister() {
    loginOrRegister = !loginOrRegister;
    notifyListeners();
  }

  void login(BuildContext context, email, password) async {
    try {
      await context.read<AuthProvider>().login(email.text, password.text);
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }
}
