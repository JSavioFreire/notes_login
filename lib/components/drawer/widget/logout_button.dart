import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 60,
      child: ElevatedButton(
          onPressed: () => (context).read<AuthProvider>().logout(),
          child: const Text(
            'Sair',
            style: TextStyle(fontSize: 17),
          )),
    );
  }
}
