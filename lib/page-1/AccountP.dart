import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class SceneAccountP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone14pro1compteprowRE (1:568)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(32*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/iphone-14-pro-1-compte-pro-bg.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle5tNQ (1:612)
              left: 1*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 404*fem,
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
              // rectangle5g3N (1:436)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 395*fem,
                  height: 457*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      gradient: LinearGradient (
                        begin: Alignment(-0.744, -0.814),
                        end: Alignment(1.129, 1.102),
                        colors: <Color>[Color(0xffffbe9b), Color(0xffef7330)],
                        stops: <double>[0.051, 0.519],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // image1618jXS (1:463)
              left: 275.3322753906*fem,
              top: 194.3815307617*fem,
              child: Align(
                child: SizedBox(
                  width: 62.29*fem,
                  height: 58.47*fem,
                  child: Image.asset(
                    'assets/page-1/images/image-1618.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // statusbariphone131zk (1:569)
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
                      // leftsidetYk (I1:569;839:7139)
                      margin: EdgeInsets.fromLTRB(0*fem, 14*fem, 32*fem, 10*fem),
                      width: 54*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(24*fem),
                      ),
                      child: Container(
                        // statusbartimeD5E (I1:569;839:7140)
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
                      // notchfLY (I1:569;839:7137)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 17*fem),
                      width: 164*fem,
                      height: 32*fem,
                      child: Image.asset(
                        'assets/page-1/images/notch-gdr.png',
                        width: 164*fem,
                        height: 32*fem,
                      ),
                    ),
                    Container(
                      // rightsideMz4 (I1:569;839:7141)
                      margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 0*fem, 15*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // iconmobilesignalV4g (I1:569;839:7150)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                            width: 18*fem,
                            height: 12*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-mobile-signal-kTN.png',
                              width: 18*fem,
                              height: 12*fem,
                            ),
                          ),
                          Container(
                            // wifibdW (I1:569;839:7146)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                            width: 17*fem,
                            height: 12*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi.png',
                              width: 17*fem,
                              height: 12*fem,
                            ),
                          ),
                          Container(
                            // batteryv9z (I1:569;839:7142)
                            width: 27.4*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery.png',
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
              // group480954643kQ (1:526)
              left: 39*fem,
              top: 64*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13*fem, 1.88*fem, 10.33*fem, 1.12*fem),
                width: 95*fem,
                height: 27*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(21*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame21szL (1:528)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.39*fem, 0*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // proQjN (1:529)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.39*fem, 6*fem),
                            child: Text(
                              'Pro',
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
                            // materialsymbolsarrowdropdownro (1:530)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.6*fem, 0*fem, 0*fem),
                            width: 7.21*fem,
                            height: 4.6*fem,
                            child: Image.asset(
                              'assets/page-1/images/material-symbols-arrow-drop-down-rounded-Fik.png',
                              width: 7.21*fem,
                              height: 4.6*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // materialsymbolsmagicbuttonRPa (1:532)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.74*fem, 0*fem, 0*fem),
                      width: 21.67*fem,
                      height: 19.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/material-symbols-magic-button.png',
                        width: 21.67*fem,
                        height: 19.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // profileholderLFe (1:484)
              left: 0*fem,
              top: 226*fem,
              child: Align(
                child: SizedBox(
                  width: 396*fem,
                  height: 545*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffd7e8f8),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(32*fem),
                        topRight: Radius.circular(32*fem),
                      ),
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
              // homeindicatorNy2 (I1:608;5:3093)
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
              // sukirealisticpictureoftheceoof (20:48)
              left: 157*fem,
              top: 194*fem,
              child: Align(
                child: SizedBox(
                  width: 72*fem,
                  height: 72*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(56*fem),
                    child: Image.asset(
                      'assets/page-1/images/sukirealisticpictureoftheceoofappletimcookwhichisha342865bc-fee4-450f-81e4-d98b3db2ad2d-1-KKa.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // abonnementifW (1:486)
              left: 37*fem,
              top: 264*fem,
              child: Align(
                child: SizedBox(
                  width: 83*fem,
                  height: 21*fem,
                  child: Text(
                    'Abonnement',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Open Sans',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // abonnesckt (1:487)
              left: 277*fem,
              top: 264*fem,
              child: Align(
                child: SizedBox(
                  width: 64*fem,
                  height: 21*fem,
                  child: Text(
                    'Abonnées',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Open Sans',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // Jdi (1:488)
              left: 65*fem,
              top: 241*fem,
              child: Align(
                child: SizedBox(
                  width: 25*fem,
                  height: 21*fem,
                  child: Text(
                    '804',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Open Sans',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // Pv4 (1:489)
              left: 297*fem,
              top: 241*fem,
              child: Align(
                child: SizedBox(
                  width: 25*fem,
                  height: 21*fem,
                  child: Text(
                    '390',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Open Sans',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // timcooking5H6 (1:490)
              left: 138*fem,
              top: 293*fem,
              child: Align(
                child: SizedBox(
                  width: 111*fem,
                  height: 26*fem,
                  child: Text(
                    '@timcooking',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Open Sans',
                      fontSize: 17*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5294117647*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // cuisinitoilspecialisteencuisin (1:491)
              left: 72*fem,
              top: 321*fem,
              child: Align(
                child: SizedBox(
                  width: 244*fem,
                  height: 42*fem,
                  child: Text(
                    'Cuisinié étoilé ⭐️  Specialiste en cuisine  Thailandaise',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Open Sans',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group4Pwz (1:492)
              left: 65*fem,
              top: 385*fem,
              child: Container(
                width: 112*fem,
                height: 32*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(32*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0*fem, 5*fem),
                      blurRadius: 5*fem,
                    ),
                  ],
                ),
                child: Container(
                  // group3J3N (1:493)
                  padding: EdgeInsets.fromLTRB(20*fem, 5*fem, 22*fem, 6*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: Color(0xffefc019),
                    borderRadius: BorderRadius.circular(32*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // suivrezwn (1:495)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                        child: Text(
                          'Suivre',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Open Sans',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // cadenasverrouille182Q (1:613)
                        width: 13*fem,
                        height: 13*fem,
                        child: Image.asset(
                          'assets/page-1/images/cadenas-verrouille-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group2T4g (1:496)
              left: 211*fem,
              top: 385*fem,
              child: Container(
                width: 112*fem,
                height: 32*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(32*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0*fem, 5*fem),
                      blurRadius: 5*fem,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Message',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Open Sans',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group18282tfn (1:521)
              left: 125*fem,
              top: 433*fem,
              child: Container(
                width: 138*fem,
                height: 24*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(32*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogrouppxelPsS (VNLR6eGyy2THr5XibqpXEL)
                      width: 16*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // allXye (1:522)
                            width: double.infinity,
                            child: Text(
                              'All',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Open Sans',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle11sGp (1:525)
                            width: 15*fem,
                            height: 3*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(32*fem),
                              gradient: LinearGradient (
                                begin: Alignment(0, -1),
                                end: Alignment(0, 1),
                                colors: <Color>[Color(0xff3f464b), Color(0xff1e2124)],
                                stops: <double>[0, 1],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 21*fem,
                    ),
                    Text(
                      // postswnU (1:523)
                      'Posts',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Open Sans',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      width: 21*fem,
                    ),
                    Text(
                      // videossRE (1:524)
                      'Videos',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Open Sans',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group6cNp (1:499)
              left: 2*fem,
              top: 468*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                width: 390*fem,
                height: 607*fem,
                decoration: BoxDecoration (
                  gradient: LinearGradient (
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[Color(0xffffffff), Color(0x3fffffff)],
                    stops: <double>[0, 1],
                  ),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(32*fem),
                    topRight: Radius.circular(32*fem),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0*fem, -2*fem),
                      blurRadius: 5*fem,
                    ),
                  ],
                ),
                child: Container(
                  // group52SY (1:501)
                  width: double.infinity,
                  height: 316*fem,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur (
                      sigmaX: 11*fem,
                      sigmaY: 11*fem,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle3wZW (1:502)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 150*fem,
                              height: 150*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only (
                                  topLeft: Radius.circular(32*fem),
                                ),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-3.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle52ax (1:503)
                          left: 278*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 80*fem,
                              height: 80*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only (
                                  topRight: Radius.circular(32*fem),
                                ),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-5.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle7jEU (1:504)
                          left: 278*fem,
                          top: 236*fem,
                          child: Align(
                            child: SizedBox(
                              width: 80*fem,
                              height: 80*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only (
                                  bottomRight: Radius.circular(32*fem),
                                ),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-7.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle6Rd6 (1:505)
                          left: 174*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 80*fem,
                              height: 80*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-6.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle9kQU (1:506)
                          left: 176*fem,
                          top: 95*fem,
                          child: Align(
                            child: SizedBox(
                              width: 182*fem,
                              height: 125*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-9.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle84vx (1:507)
                          left: 174*fem,
                          top: 236*fem,
                          child: Align(
                            child: SizedBox(
                              width: 80*fem,
                              height: 80*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-8.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle4nrx (1:508)
                          left: 0*fem,
                          top: 166*fem,
                          child: Align(
                            child: SizedBox(
                              width: 150*fem,
                              height: 150*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only (
                                  bottomLeft: Radius.circular(32*fem),
                                ),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-4.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // cadenasverrouille2W2G (23:49)
                          left: 75*fem,
                          top: 64*fem,
                          child: Align(
                            child: SizedBox(
                              width: 203*fem,
                              height: 203*fem,
                              child: Image.asset(
                                'assets/page-1/images/cadenas-verrouille-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame182FW (25:50)
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
                      // frame14Jip (25:51)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // biglobeamericasCpC (25:52)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                            width: 36*fem,
                            height: 36*fem,
                            child: Image.asset(
                              'assets/page-1/images/bi-globe-americas-eQk.png',
                              width: 36*fem,
                              height: 36*fem,
                            ),
                          ),
                          Container(
                            // uilmessageWpt (25:54)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                            width: 36*fem,
                            height: 36*fem,
                            child: Image.asset(
                              'assets/page-1/images/uil-message-zsE.png',
                              width: 36*fem,
                              height: 36*fem,
                            ),
                          ),
                          Container(
                            // ggmenugridoSTe (25:56)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/gg-menu-grid-o-n1a.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          Container(
                            // iconparkoutlinelike8bN (25:58)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.74*fem, 42*fem, 0*fem),
                            width: 30*fem,
                            height: 25.74*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-park-outline-like.png',
                              width: 30*fem,
                              height: 25.74*fem,
                            ),
                          ),
                          Container(
                            // mdiaccountoutline2we (25:60)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/mdi-account-outline-T6c.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangle7Mj2 (25:62)
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
          ],
        ),
      ),
          );
  }
}