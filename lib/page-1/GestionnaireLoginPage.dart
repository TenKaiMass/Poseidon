import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Acceuil.dart';

import '../models/user.dart';
import 'LoginPage.dart';

class SceneLog extends StatefulWidget {
  const SceneLog({Key? key}) : super(key: key);

  @override
  _SceneLogState createState() => _SceneLogState();
}

class _SceneLogState extends State<SceneLog> {
  final auth = Auth(auth: FirebaseAuth.instance);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: auth.authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return  AcceuilPage(user: auth.currentUser!, selectedIndex: 0);
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
