import 'package:flutter/material.dart';
import 'package:notes_login/provider/functions/functions_provider.dart';
import 'package:notes_login/screens/login/components/login_form.dart';
import 'package:notes_login/screens/login/components/register_form.dart';
import 'package:notes_login/screens/login/widget/background/circular_design_bottom.dart';
import 'package:notes_login/screens/login/widget/background/circular_design_top.dart';
import 'package:notes_login/screens/login/widget/background/gradient_background.dart';
import 'package:notes_login/screens/login/widget/title/title.login.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FunctionsProvider provider = Provider.of<FunctionsProvider>(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          const GradientBackground(),
          const CircularDesignTop(),
          const CircularDesignBottom(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TitleLogin(),
                  provider.loginOrRegister ? const LoginForm() : const RegisterForm()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
