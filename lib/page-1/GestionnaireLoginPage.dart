

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
  const SceneLog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Log createState() => _Log();
}

class _Log extends State<SceneLog> {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth(auth: FirebaseAuth.instance).authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}

