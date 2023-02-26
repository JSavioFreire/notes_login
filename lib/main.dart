import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:notes_login/firebase_options.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/provider/functions/functions_provider.dart';
import 'package:notes_login/screens/new_edit/new_edit.dart';
import 'package:notes_login/service/check_auth_service.dart';
import 'package:notes_login/theme/my_theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthProvider()),
      ChangeNotifierProvider(create: (context) => FunctionsProvider()),
      ChangeNotifierProvider(create: (context) => DataBaseProvider(context: context)),

    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const CheckAuthService(),
        '/new': (context) => const NewEdit(),
      },
    );
  }
}
