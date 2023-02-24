import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:notes_login/screens/home/home_screen.dart';
import 'package:notes_login/screens/loading/loading_screen.dart';
import 'package:notes_login/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

class CheckAuthService extends StatelessWidget {
  const CheckAuthService({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    if (authProvider.isLoading) {
      return const LoadingScreen();
    } else if (authProvider.users == null) {
      return const LoginScreen();
    } else {
      return const HomeScreen();
    }
  }
}
