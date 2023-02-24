import 'package:flutter/material.dart';
import 'package:notes_login/provider/functions/functions_provider.dart';
import 'package:provider/provider.dart';

class ElevatedButtonLoginRegister extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController? name;

  const ElevatedButtonLoginRegister(
      {super.key,
      required this.formKey,
      required this.email,
      required this.password,
      this.name});

  @override
  Widget build(BuildContext context) {
    FunctionsProvider provider = Provider.of<FunctionsProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (provider.loginOrRegister) {
                    provider.login(context, email, password);
                  } else {
                    provider.register(
                        context, email.text, password.text, name!.text);
                  }
                }
              },
              child: (provider.buttonInLoading == true)
                  ? const SizedBox(
                      height: 25,
                      width: 25,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ))
                  : Text(
                      provider.loginOrRegister ? 'Login' : 'Cadastrar',
                      style: const TextStyle(fontSize: 18),
                    ))),
    );
  }
}
