import 'package:flutter/material.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:provider/provider.dart';

class MyFAB extends StatelessWidget {
  const MyFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/new');
        (context).read<DataBaseProvider>().createToDb();
      },
      child: const Icon(Icons.add),
    );
  }
}
