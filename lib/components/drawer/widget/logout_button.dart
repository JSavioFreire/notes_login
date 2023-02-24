import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(
                    onPressed: () => (context).read<AuthProvider>().logout(),
                    child: const Text('Sair')),
              )
    ;
  }
}