import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider provider = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home'),
          Text(provider.users!.displayName.toString()),
          ElevatedButton(
              onPressed: () => provider.logout(),
              child: const Text('logout'))
        ],
      ),
    );
  }
}
