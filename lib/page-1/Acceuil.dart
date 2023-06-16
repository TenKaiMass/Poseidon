import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';

import '../models/user.dart';

class AcceuilPage extends StatefulWidget {
  final User user;
  const AcceuilPage({Key? key, required this.user, required int selectedIndex}) : super(key: key);

  @override
  State<AcceuilPage> createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  double getRelativeSize(BuildContext context, double baseSize) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return baseSize * fem;
  }

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
              child: Text('Pas de contenu disponible pour le moment',
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

  Widget buildSeparatorBar(BuildContext context, double fem) {
    return Positioned(
      left: getRelativeSize(context, 39),
      top: getRelativeSize(context, 224),
      child: Align(
        child: SizedBox(
          width: getRelativeSize(context, 315),
          height: getRelativeSize(context, 4),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getRelativeSize(context, 25)),
              color: const Color.fromARGB(94, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFreePlanContainer(BuildContext context, double fem, double ffem) {
    return Positioned(
      left: MediaQuery.of(context).size.width / 2 - (95 * fem) / 2,
      top: 70,
      child: Container(
        width: getRelativeSize(context, 95),
        height: getRelativeSize(context, 27),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff000000)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(getRelativeSize(context, 21)),
        ),
        child: Container(
          alignment: AlignmentDirectional.bottomEnd,
          padding: EdgeInsets.fromLTRB(0, 0, getRelativeSize(context, 8.39), 0),
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    getRelativeSize(context, 10),
                    getRelativeSize(context, 3),
                    getRelativeSize(context, 16.39),
                    getRelativeSize(context, 6)),
                child: Text(
                  'Free',
                  style: SafeGoogleFont(
                    'Comic Sans MS',
                    fontSize: getRelativeSize(context, 14 * ffem),
                    fontWeight: FontWeight.w700,
                    height: 1.2575 * ffem / fem,
                    color: const Color.fromARGB(255, 55, 54, 54),
                  ),
                ),
              ),
            ],
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
            },
            child: Container(
              child: Icon(
                Icons.logout,
                size: getRelativeSize(context, 28),
                color: Colors.black,
              ),
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
      bottomNavigationBar: MyBottomNavigationBar(user: widget.user,selectedIndex: 0),
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
            buildSeparatorBar(context, fem),
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
