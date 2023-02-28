import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_login/model/user_info.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class ChangeStyleColorProvider extends ChangeNotifier {
  BuildContext context;
  ChangeStyleColorProvider({required this.context});

  late AuthProvider authProvider =
      Provider.of<AuthProvider>(context, listen: false);
  FirebaseFirestore db = FirebaseFirestore.instance;

  int styleColor = 0;
  List<String> stylePostItColor = [
    'initial',
    'red',
    'orange',
    'eletric',
    'strong',
    'amazing'
  ];

  void changeColor(int newColor) {
    styleColor = newColor;
    UserInfoModel userInfo =
        UserInfoModel(styleColor: styleColor);
    db
        .collection(authProvider.users!.uid)
        .doc('UserInfo')
        .set(userInfo.toMap());
  }

  void fromDb() async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await db.collection(authProvider.users!.uid).doc('UserInfo').get();
    styleColor = snapshot['styleColor'];
    notifyListeners();
  }
}
