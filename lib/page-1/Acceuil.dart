import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone14pro1accueilgex (29:47)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(32*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle5akL (29:301)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 405*fem,
                  height: 457*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      gradient: LinearGradient (
                        begin: Alignment(-0.744, -0.814),
                        end: Alignment(1.129, 1.102),
                        colors: <Color>[Color(0xff3d69c0), Color(0xff854bfe)],
                        stops: <double>[0.051, 0.966],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // profileholderqRN (29:178)
              left: 1*fem,
              top: 118*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 702*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                      color: Color(0xfcffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, -2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle8XJC (29:179)
              left: 39*fem,
              top: 224*fem,
              child: Align(
                child: SizedBox(
                  width: 315*fem,
                  height: 4*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(25*fem),
                      color: Color(0xa8d9d9d9),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // statusbariphone13qpg (29:50)
              left: 3*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(27*fem, 0*fem, 26.6*fem, 0*fem),
                width: 390*fem,
                height: 47*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // leftside9Ka (I29:50;839:7139)
                      margin: EdgeInsets.fromLTRB(0*fem, 14*fem, 32*fem, 10*fem),
                      width: 54*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(24*fem),
                      ),
                      child: Container(
                        // statusbartime5DE (I29:50;839:7140)
                        padding: EdgeInsets.fromLTRB(12*fem, 1*fem, 12*fem, 0*fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(24*fem),
                        ),
                        child: Text(
                          '9:41',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'SF Pro Text',
                            fontSize: 17*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2941176471*ffem/fem,
                            letterSpacing: -0.4079999924*fem,
                            color: Color(0xff010101),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // notchLex (I29:50;839:7137)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 17*fem),
                      width: 164*fem,
                      height: 32*fem,
                      child: Image.asset(
                        'assets/page-1/images/notch-QXe.png',
                        width: 164*fem,
                        height: 32*fem,
                      ),
                    ),
                    Container(
                      // rightsidede4 (I29:50;839:7141)
                      margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 0*fem, 15*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // iconmobilesignalYW8 (I29:50;839:7150)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                            width: 18*fem,
                            height: 12*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-mobile-signal.png',
                              width: 18*fem,
                              height: 12*fem,
                            ),
                          ),
                          Container(
                            // wifi4Da (I29:50;839:7146)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                            width: 17*fem,
                            height: 12*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-wtQ.png',
                              width: 17*fem,
                              height: 12*fem,
                            ),
                          ),
                          Container(
                            // batteryBJC (I29:50;839:7142)
                            width: 27.4*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-Ak4.png',
                              width: 27.4*fem,
                              height: 13*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group48095464Jdi (29:52)
              left: 39*fem,
              top: 64*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13*fem, 1.88*fem, 23*fem, 1.12*fem),
                width: 95*fem,
                height: 27*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(21*fem),
                ),
                child: Container(
                  // frame21yzk (29:54)
                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.39*fem, 0*fem),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // free86x (29:55)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.39*fem, 6*fem),
                        child: Text(
                          'Free',
                          style: SafeGoogleFont (
                            'Comic Sans MS',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff3e3d3d),
                          ),
                        ),
                      ),
                      Container(
                        // materialsymbolsarrowdropdownro (29:56)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.6*fem, 0*fem, 0*fem),
                        width: 7.21*fem,
                        height: 4.6*fem,
                        child: Image.asset(
                          'assets/page-1/images/material-symbols-arrow-drop-down-rounded.png',
                          width: 7.21*fem,
                          height: 4.6*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // homeindicatorKhE (I29:59;5:3093)
              left: 129*fem,
              top: 831*fem,
              child: Align(
                child: SizedBox(
                  width: 134*fem,
                  height: 5*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(100*fem),
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame18S1A (29:82)
              left: 0*fem,
              top: 762*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(46.5*fem, 14*fem, 46.5*fem, 65*fem),
                width: 405*fem,
                height: 137*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0x21000000)),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame14Kak (29:83)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // biglobeamericasS9a (29:84)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                            width: 36*fem,
                            height: 36*fem,
                            child: Image.asset(
                              'assets/page-1/images/bi-globe-americas.png',
                              width: 36*fem,
                              height: 36*fem,
                            ),
                          ),
                          Container(
                            // uilmessageLkk (29:86)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                            width: 36*fem,
                            height: 36*fem,
                            child: Image.asset(
                              'assets/page-1/images/uil-message-YpL.png',
                              width: 36*fem,
                              height: 36*fem,
                            ),
                          ),
                          Container(
                            // ggmenugridoU6G (29:88)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/gg-menu-grid-o-sxG.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          Container(
                            // iconparkoutlinelikeauz (29:90)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.74*fem, 42*fem, 0*fem),
                            width: 30*fem,
                            height: 25.74*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-park-outline-like-xcc.png',
                              width: 30*fem,
                              height: 25.74*fem,
                            ),
                          ),
                          Container(
                            // mdiaccountoutlinehji (29:92)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/mdi-account-outline-5g8.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangle7qb2 (29:94)
                      margin: EdgeInsets.fromLTRB(86.5*fem, 0*fem, 86.5*fem, 0*fem),
                      width: double.infinity,
                      height: 6*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(22*fem),
                        color: Color(0xff626267),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame29AdJ (29:111)
              left: 15*fem,
              top: 249*fem,
              child: Container(
                width: 342*fem,
                height: 448*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame23Udz (29:114)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 10*fem, 2*fem),
                      height: 24*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse5920awv (29:115)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                            width: 21*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/ellipse-5920.png',
                              width: 21*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // frame226vG (29:116)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.42*fem, 12.97*fem, 1.42*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorSUL (29:117)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                  width: 20*fem,
                                  height: 17.16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector.png',
                                    width: 20*fem,
                                    height: 17.16*fem,
                                  ),
                                ),
                                Container(
                                  // MrC (29:118)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.16*fem),
                                  child: Text(
                                    '28',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff5a5959),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // uilcommentfrt (29:119)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 20.03*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/uil-comment.png',
                              width: 20.03*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // uilsharebEk (29:121)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                            width: 20*fem,
                            height: 18*fem,
                            child: Image.asset(
                              'assets/page-1/images/uil-share.png',
                              width: 20*fem,
                              height: 18*fem,
                            ),
                          ),
                          Container(
                            // icoutlinemorevert7Tz (29:123)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                            width: 4*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/page-1/images/ic-outline-more-vert.png',
                              width: 4*fem,
                              height: 16*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupdpacEHi (VNLUsx9E9GKh57TGKVdPac)
                      margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 0*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(75*fem, 8*fem, 75*fem, 8*fem),
                      width: 318*fem,
                      height: 408*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffd9d9d9),
                        borderRadius: BorderRadius.circular(12*fem),
                        image: DecorationImage (
                          fit: BoxFit.cover,
                          image: AssetImage (
                            'assets/page-1/images/rectangle-10-bg.png',
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 5*fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // iconparkoutlinelikeUSx (29:174)
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangle8pFv (29:139)
              left: 39*fem,
              top: 723*fem,
              child: Align(
                child: SizedBox(
                  width: 315*fem,
                  height: 4*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(25*fem),
                      color: Color(0xa8d9d9d9),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse13KiU (29:169)
              left: 15*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 56*fem,
                  height: 56*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(28*fem),
                      color: Color(0xffd9d9d9),
                      border: Border (
                      ),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-13-bg.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse14Nwe (29:170)
              left: 93*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 56*fem,
                  height: 56*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(28*fem),
                      border: Border.all(color: Color(0xfffdd504)),
                      color: Color(0xffd9d9d9),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-14-bg.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse15FkY (29:171)
              left: 171*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 56*fem,
                  height: 56*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(28*fem),
                      border: Border.all(color: Color(0xfffdd504)),
                      color: Color(0xffd9d9d9),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-15-bg.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse16LGC (29:172)
              left: 249*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 56*fem,
                  height: 56*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(28*fem),
                      border: Border.all(color: Color(0xfffdd504)),
                      color: Color(0xffd9d9d9),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-16-bg.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse17RHe (29:173)
              left: 327*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 56*fem,
                  height: 56*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(28*fem),
                      border: Border.all(color: Color(0xfffdd504)),
                      color: Color(0xffd9d9d9),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-17-bg.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group48095463i1r (1:363)
              left: 346*fem,
              top: 64*fem,
              child: Align(
                child: SizedBox(
                  width: 26.81*fem,
                  height: 26.81*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-48095463.png',
                    width: 26.81*fem,
                    height: 26.81*fem,
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