import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';

import '../models/user.dart';
import '../widget.dart';
import 'GestionnaireLoginPage.dart';

class AcceuilPage extends StatefulWidget {
  final User user;
  const AcceuilPage({Key? key, required this.user, required int selectedIndex})
      : super(key: key);

  @override
  State<AcceuilPage> createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  Widget buildFeedContainer(BuildContext context, double fem, double ffem) {
    return Positioned(
      left: getRelativeSize(context, 1),
      top: getRelativeSize(context, 118),
      child: Align(
        child: SizedBox(
          width: getRelativeSize(context, 393),
          height: getRelativeSize(context, 902),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getRelativeSize(context, 30)),
              color: const Color(0xfcffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0, -2 * fem),
                  blurRadius: getRelativeSize(context, 5),
                ),
              ],
            ),
            child: Container(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Pas de contenu disponible pour le moment',
                style: SafeGoogleFont(
                  'Comic Sans MS',
                  fontSize: getRelativeSize(context, 14 * ffem),
                  fontWeight: FontWeight.w700,
                  height: 1.2575 * ffem / fem,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNotificationIcon(BuildContext context, double fem) {
    return Positioned(
      left: getRelativeSize(context, 346),
      top: getRelativeSize(context, 70),
      child: Align(
        child: SizedBox(
          width: getRelativeSize(context, 26.81),
          height: getRelativeSize(context, 26.81),
          child: Icon(
            Icons.notifications_outlined,
            size: getRelativeSize(context, 28),
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildAddFriendsIcon(BuildContext context, double fem) {
    return Positioned(
      left: getRelativeSize(context, 15),
      top: getRelativeSize(context, 147),
      child: Align(
        child: SizedBox(
          width: getRelativeSize(context, 56),
          height: getRelativeSize(context, 56),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getRelativeSize(context, 28)),
              border: Border.all(color: Colors.black),
              color: Colors.white,
            ),
            child: Icon(
              Icons.add,
              size: getRelativeSize(context, 28),
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLogoutIcon(BuildContext context, double fem) {
    return Positioned(
      left: getRelativeSize(context, 320),
      top: getRelativeSize(context, 147),
      child: Align(
        child: SizedBox(
          width: getRelativeSize(context, 56),
          height: getRelativeSize(context, 56),
          child: GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SceneLog()),
              );
            },
            child: Icon(
              Icons.logout,
              size: getRelativeSize(context, 28),
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 393;
    double ffem = fem * 0.97;
    return Scaffold(
      bottomNavigationBar:
          MyBottomNavigationBar(user: widget.user, selectedIndex: 0),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.744, -2.214),
            end: Alignment(1.129, 1.102),
            colors: <Color>[Color(0xff3d69c0), Color(0xff854bfe)],
            stops: <double>[0.051, 0.966],
          ),
        ),
        width: double.infinity,
        child: Stack(
          children: [
            buildFeedContainer(context, fem, ffem),
            buildSeparatorBar(context, fem, 224),
            buildFreePlanContainer(context, fem, ffem),
            buildNotificationIcon(context, fem),
            buildAddFriendsIcon(context, fem),
            buildLogoutIcon(context, fem),
          ],
        ),
      ),
    );
  }
}
