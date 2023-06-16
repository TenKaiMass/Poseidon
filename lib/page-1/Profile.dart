import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import '../widget.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  const ProfilePage({Key? key, required this.user, required int selectedIndex})
      : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double getFem(BuildContext context) {
    return MediaQuery.of(context).size.width / 393;
  }

  double getFFem(BuildContext context) {
    return getFem(context) * 0.97;
  }

  Positioned buildPositionedContainer(double fem) {
    return Positioned(
      left: 0 * fem,
      top: 120 * fem,
      child: Align(
        child: SizedBox(
          width: 393 * fem,
          height: 742 * fem,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30 * fem),
              color: Color(0xfcffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0 * fem, -2 * fem),
                  blurRadius: 5 * fem,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Positioned buildPositionedText({
    required double left,
    required double top,
    required String text,
    required TextStyle style,
    required double fem,
  }) {
    return Positioned(
      left: left,
      top: top,
      child: Align(
        child: SizedBox(
          width: text.length * 9 * fem,
          height: 21 * fem,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: style,
          ),
        ),
      ),
    );
  }

  Positioned buildPositionedProfileImage(double fem) {
    return Positioned(
      left: MediaQuery.of(context).size.width / 2 - 36 * fem,
      top: 168 * fem,
      child: Align(
        child: SizedBox(
          width: 72 * fem,
          height: 72 * fem,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50 * fem),
              border: Border.all(color: Colors.black),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.person,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }


  Positioned buildPositionedButton({
    required double left,
    required double top,
    required double width,
    required double height,
    required Color backgroundColor,
    required Color textColor,
    required String text,
    required double fontSize,
    required FontWeight fontWeight,
    required double fem,
  }) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32 * fem),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset(0 * fem, 5 * fem),
              blurRadius: 5 * fem,
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32 * fem),
            ),
            elevation: 5 * fem,
          ),
          onPressed: () {},
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                height: 1.5 * fem,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double fem = getFem(context);
    double ffem = getFFem(context);

    return Scaffold(
      bottomNavigationBar:
          MyBottomNavigationBar(user: widget.user, selectedIndex: 4),
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
            buildPositionedContainer(fem),
            buildPositionedText(
              left: 37 * fem,
              top: 230 * fem,
              text: 'Abonnement',
              style: TextStyle(
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w300,
                height: 1.5 * ffem / fem,
                color: Color(0xff000000),
              ),
              fem: fem,
            ),
            buildPositionedText(
              left: 277 * fem,
              top: 230 * fem,
              text: 'Abonnées',
              style: TextStyle(
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w300,
                height: 1.5 * ffem / fem,
                color: Color(0xff000000),
              ),
              fem: fem,
            ),
            buildPositionedText(
              left: 73 * fem,
              top: 207 * fem,
              text: '0',
              style: TextStyle(
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.5 * ffem / fem,
                color: Color(0xff000000),
              ),
              fem: fem,
            ),
            buildPositionedText(
              left: 301 * fem,
              top: 207 * fem,
              text: '0',
              style: TextStyle(
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.5 * ffem / fem,
                color: Color(0xff000000),
              ),
              fem: fem,
            ),
            buildPositionedProfileImage(fem),
            buildPositionedText(
              left: 146 * fem,
              top: 259 * fem,
              text: '@Ashley_B2O',
              style: TextStyle(
                fontSize: 17 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.5294117647 * ffem / fem,
                color: Color(0xff000000),
              ),
              fem: fem,
            ),
            buildPositionedText(
              left: 30 * fem,
              top: 287 * fem,
              text: 'Passionnée de booba et de patisserie',
              style: TextStyle(
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w300,
                height: 1.5 * ffem / fem,
                color: Color(0xff000000),
              ),
              fem: fem,
            ),
            buildPositionedButton(
              left: 64 * fem,
              top: 385 * fem,
              width: 112 * fem,
              height: 32 * fem,
              backgroundColor: Color(0xff1988ef),
              textColor: Color(0xffffffff),
              text: 'Suivre',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w600,
              fem: fem,
            ),
            buildPositionedButton(
              left: 211 * fem,
              top: 385 * fem,
              width: 112 * fem,
              height: 32 * fem,
              backgroundColor: Colors.white,
              textColor: Color(0xff000000),
              text: 'Message',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w600,
              fem: fem,
            ),
            buildSeparatorBar(context, fem, 342),
            buildFreePlanContainer(context, fem, ffem),
            Positioned(
              left: 80 * fem,
              top: 433 * fem,
              child: Container(
                width: 230 * fem,
                height: 24 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32 * fem),
                ),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                    ),
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Posts'),
                      Tab(text: 'Videos'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
