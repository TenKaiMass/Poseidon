import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import '../models/user.dart';

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({Key? key}) : super(key: key);

  @override
  State<AcceuilPage> createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        bottomNavigationBar: const MyBNavBar(),
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
              // cadre blanc feed
              Positioned(
                left: 1 * fem,
                top: 118 * fem,
                child: Align(
                  child: SizedBox(
                    width: 393 * fem,
                    height: 902 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * fem),
                        color: const Color(0xfcffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, -2 * fem),
                            blurRadius: 5 * fem,
                          ),
                        ],
                      ),
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          'pas de recettes diponibles',
                          style: SafeGoogleFont(
                            'Comic Sans MS',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575 * ffem / fem,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //bar de separation amis et feed
              Positioned(
                left: 39 * fem,
                top: 224 * fem,
                child: Align(
                  child: SizedBox(
                    width: 315 * fem,
                    height: 4 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color.fromARGB(94, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
              // cadre free plan
              Positioned(
                left: MediaQuery.of(context).size.width / 2 - (95 * fem) / 2,
                top: 70,
                child: Container(
                  width: 95 * fem,
                  height: 27 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff000000)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(21 * fem),
                  ),
                  child: Container(
                    // frame21yzk (29:54)
                    alignment: AlignmentDirectional.bottomEnd,
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 8.39 * fem, 0 * fem),
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      children: [
                        // FREE PLAN
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 3 * fem, 16.39 * fem, 6 * fem),
                          child: Text(
                            'Free',
                            style: SafeGoogleFont(
                              'Comic Sans MS',
                              fontSize: 14 * ffem,
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
              ),
              Positioned(
                // group48095463i1r (1:363)
                left: 346 * fem,
                top: 70 * fem,
                child: Align(
                  child: SizedBox(
                    width: 26.81 * fem,
                    height: 26.81 * fem,
                    child: Icon(Icons.notifications_outlined,
                        size: 28 * fem, color: Colors.white),
                  ),
                ),
              ),

              // ajout amis
              Positioned(
                // ellipse14Nwe (29:170)
                left: 15 * fem,
                top: 147 * fem,
                child: Align(
                  child: SizedBox(
                    width: 56 * fem,
                    height: 56 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28 * fem),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.add,
                        size: 28 * fem,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse14Nwe (29:170)
                left: 320 * fem,
                top: 147 * fem,
                child: Align(
                    child: SizedBox(
                        width: 56 * fem,
                        height: 56 * fem,
                        child: GestureDetector(
                            onTap: () {
                              // User.signOut();
                            },
                            child: Container(
                                child: Icon(
                              Icons.logout,
                              size: 28 * fem,
                              color: Colors.black,
                            ))))),
              ),
            ],
          ),
        ));
  }
}
