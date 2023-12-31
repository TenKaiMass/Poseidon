import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import '../widget.dart';
import 'Acceuil.dart';
import 'ProfileSettings.dart';

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

  Positioned buildPositionedUserName({
    required double top,
    required String text,
    required TextStyle style,
    required double fem,
  }) {
    return Positioned(
      top: top,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 30 * fem,
        // child: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10 * fem),
        //   border: Border.all(color: Colors.black),
        // ),
        child: Center(
          child: Text(
            text.isNotEmpty ? text : "",
            textAlign: TextAlign.center,
            style: style,
          ),
          // ),
        ),
      ),
    );
  }

  Positioned buildPositionedTextGauche({
    required double top,
    required String text,
    required TextStyle style,
    required double fem,
  }) {
    return Positioned(
        top: top,
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          height: 30 * fem,
          child: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10 * fem),
            //   border: Border.all(color: Colors.black),
            // ),
            child: Center(
              child: Text(
                text.isNotEmpty ? text : "",
                textAlign: TextAlign.center,
                style: style,
              ),
              // ),
            ),
          ),
        ));
  }

    Positioned buildPositionedTextDroit({
    required double top,
    required String text,
    required TextStyle style,
    required double fem,
  }) {
    return Positioned(
        top: top,
        left: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width /3 ,
        child: SizedBox(
          width: MediaQuery.of(context).size.width /3 ,
          height: 30 * fem,
          child: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10 * fem),
            //   border: Border.all(color: Colors.black),
            // ),
            child: Center(
              child: Text(
                text.isNotEmpty ? text : "",
                textAlign: TextAlign.center,
                style: style,
              ),
              // ),
            ),
          ),
        ));
  }



  Positioned buildPositionedBio({
    required double top,
    required String text,
    required TextStyle style,
    required double fem,
  }) {
    return Positioned(
      top: top,
      left: MediaQuery.of(context).size.width / 2 - 100,
      child: SizedBox(
        width: 200,
        height: 100 * fem,
        child: SingleChildScrollView(
          // child: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10 * fem),
          //   border: Border.all(color: Colors.black),
          // ),
          child: Center(
            child: Text(
              text.isNotEmpty ? text : "",
              textAlign: TextAlign.center,
              style: style,
            ),
          ),
          // ),
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
              color: const Color(0x3f000000),
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ProfileCustomizationPage(user: widget.user)),
            );
          },
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
        // ...
        body: FutureBuilder<DocumentSnapshot>(
            future: FirebaseFirestore.instance
                .collection("Users")
                .doc(widget.user.uid)
                .get(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(); // Affiche un indicateur de chargement pendant le chargement des données
              }

              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              if (!snapshot.hasData) {
                return const Text(
                    'No data found'); // Affiche un message si aucune donnée n'est trouvée
              }

              // Récupère les données du document
              Map<String, dynamic> userData =
                  snapshot.data!.data() as Map<String, dynamic>;

              // Utilisez les données pour initialiser les valeurs des champs de texte
              String username = userData['username'] ?? '';
              String bio = userData['bio'] ?? '';
              String location = userData['location'] ?? '';

              return Scaffold(
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
                      buildPositionedTextDroit(
                        top: 185 * fem,
                        text: 'Abonnement',
                        style: TextStyle(
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        fem: fem,
                      ),
                      buildPositionedTextGauche(
                        top: 185 * fem,
                        text: 'Abonnées',
                        style: TextStyle(
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        fem: fem,
                      ),
                      buildPositionedTextGauche(
                        top: 170 * fem,
                        text: '0  ',
                         style: TextStyle(
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        fem: fem,
                      ),
                      buildPositionedTextDroit(
                        top: 170 * fem,
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
                      buildPositionedUserName(
                        top: 240 * fem,
                        text: '@$username',
                        style: TextStyle(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5294117647 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        fem: fem,
                      ),
                      buildPositionedBio(
                        top: 287 * fem,
                        text: bio,
                        style: TextStyle(
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        fem: fem,
                      ),
                      buildPositionedButton(
                        left: 138 * fem,
                        top: 450 * fem,
                        width: 112 * fem,
                        height: 32 * fem,
                        backgroundColor: Colors.white,
                        textColor: Color(0xff000000),
                        text: 'Modifier',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        fem: fem,
                      ),
                      buildSeparatorBar(context, fem, 410),
                      buildFreePlanContainer(context, fem, ffem),
                      Positioned(
                        left: 80 * fem,
                        top: 500 * fem,
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
            }));
  }
}
