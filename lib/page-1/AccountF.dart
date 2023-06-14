import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class SceneAccountF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone14pro1comptefree6H2 (24:50)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(32*fem),
          image: const DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/iphone-14-pro-1-compte-free-bg.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle58jW (24:52)
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
              // statusbariphone13zWp (24:55)
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
                      // leftside5YG (I24:55;839:7139)
                      margin: EdgeInsets.fromLTRB(0*fem, 14*fem, 32*fem, 10*fem),
                      width: 54*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(24*fem),
                      ),
                      child: Container(
                        // statusbartimeoz4 (I24:55;839:7140)
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
                      // notchHPS (I24:55;839:7137)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 17*fem),
                      width: 164*fem,
                      height: 32*fem,
                      child: Image.asset(
                        'assets/page-1/images/notch.png',
                        width: 164*fem,
                        height: 32*fem,
                      ),
                    ),
                    Container(
                      // rightsidebQ8 (I24:55;839:7141)
                      margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 0*fem, 15*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // iconmobilesignaluvc (I24:55;839:7150)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                            width: 18*fem,
                            height: 12*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-mobile-signal-Mit.png',
                              width: 18*fem,
                              height: 12*fem,
                            ),
                          ),
                          Container(
                            // wifiRPA (I24:55;839:7146)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                            width: 17*fem,
                            height: 12*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-Kwi.png',
                              width: 17*fem,
                              height: 12*fem,
                            ),
                          ),
                          Container(
                            // batteryMXi (I24:55;839:7142)
                            width: 27.4*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-RUp.png',
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
              // group48095464h5n (24:57)
              left: 39*fem,
              top: 64*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13*fem, 1.88*fem, 23*fem, 1.12*fem),
                width: 95*fem,
                height: 27*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(21*fem),
                ),
                child: Container(
                  // frame21avG (24:59)
                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.39*fem, 0*fem),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // freeX4p (24:60)
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
                        // materialsymbolsarrowdropdownro (24:61)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.6*fem, 0*fem, 0*fem),
                        width: 7.21*fem,
                        height: 4.6*fem,
                        child: Image.asset(
                          'assets/page-1/images/material-symbols-arrow-drop-down-rounded-rC4.png',
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
              // profileholderjAt (24:65)
              left: 0*fem,
              top: 120*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 742*fem,
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
              // homeindicatorC4U (I24:66;5:3093)
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
              // sukirealisticpictureoftheceoof (24:67)
              left: 155*fem,
              top: 168*fem,
              child: Align(
                child: SizedBox(
                  width: 72*fem,
                  height: 72*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32*fem),
                    child: Image.asset(
                      'assets/page-1/images/sukirealisticpictureoftheceoofappletimcookwhichisha342865bc-fee4-450f-81e4-d98b3db2ad2d-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // abonnement8sE (24:68)
              left: 37*fem,
              top: 230*fem,
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
              // abonnesnwn (24:69)
              left: 277*fem,
              top: 230*fem,
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
              // gXN (24:70)
              left: 73*fem,
              top: 207*fem,
              child: Align(
                child: SizedBox(
                  width: 9*fem,
                  height: 21*fem,
                  child: Text(
                    '3',
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
              // Nuz (24:71)
              left: 301*fem,
              top: 207*fem,
              child: Align(
                child: SizedBox(
                  width: 17*fem,
                  height: 21*fem,
                  child: Text(
                    '18',
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
              // ashleyb2o65J (24:72)
              left: 136*fem,
              top: 259*fem,
              child: Align(
                child: SizedBox(
                  width: 114*fem,
                  height: 26*fem,
                  child: Text(
                    '@Ashley_B2O',
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
              // passionnedeboobaetdepatisserie (24:73)
              left: 74*fem,
              top: 287*fem,
              child: Align(
                child: SizedBox(
                  width: 240*fem,
                  height: 21*fem,
                  child: Text(
                    'Passionnée de booba et de patisserie ',
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
              // group45hv (24:74)
              left: 64*fem,
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
                  // group3bRN (24:75)
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: Color(0xff1988ef),
                    borderRadius: BorderRadius.circular(32*fem),
                  ),
                  child: Center(
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
                ),
              ),
            ),
            Positioned(
              // group2Uzx (24:79)
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
              // group18282L1a (24:82)
              left: 125*fem,
              top: 433*fem,
              child: Container(
                width: 138*fem,
                height: 24*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(32*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupaqgkSqJ (VNLTsjKEnWHXLXhi2AAQgk)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // allZuv (24:83)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
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
                          Text(
                            // posts5tG (24:84)
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
                        ],
                      ),
                    ),
                    Container(
                      // autogroupetccdet (VNLTkjWtwxcBVrJJUTEtCc)
                      width: 44*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            // videosN6g (24:85)
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
                          Container(
                            // rectangle11JFE (24:86)
                            margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 1*fem, 0*fem),
                            width: double.infinity,
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
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangle12aiY (25:48)
              left: 25*fem,
              top: 506*fem,
              child: Align(
                child: SizedBox(
                  width: 344*fem,
                  height: 244*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10*fem),
                    child: Image.asset(
                      'assets/page-1/images/rectangle-12.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // icon0vector144011gma (25:49)
              left: 113*fem,
              top: 546*fem,
              child: Align(
                child: SizedBox(
                  width: 176*fem,
                  height: 176*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(88*fem),
                    child: Image.asset(
                      'assets/page-1/images/icon0-vector-144-01-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame18oLQ (1:335)
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
                      // frame14HmN (1:343)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // biglobeamericaszfn (1:344)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                            width: 36*fem,
                            height: 36*fem,
                            child: Image.asset(
                              'assets/page-1/images/bi-globe-americas-3iL.png',
                              width: 36*fem,
                              height: 36*fem,
                            ),
                          ),
                          Container(
                            // uilmessageiLt (1:346)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                            width: 36*fem,
                            height: 36*fem,
                            child: Image.asset(
                              'assets/page-1/images/uil-message.png',
                              width: 36*fem,
                              height: 36*fem,
                            ),
                          ),
                          Container(
                            // ggmenugrido2sN (1:348)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/gg-menu-grid-o.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          Container(
                            // iconparkoutlinelikekoN (1:350)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.74*fem, 42*fem, 0*fem),
                            width: 30*fem,
                            height: 25.74*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-park-outline-like-Mpx.png',
                              width: 30*fem,
                              height: 25.74*fem,
                            ),
                          ),
                          Container(
                            // mdiaccountoutlineG12 (1:352)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/mdi-account-outline.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangle7zhi (1:354)
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
              // rectangle9Y6x (29:302)
              left: 39*fem,
              top: 342*fem,
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
          ],
        ),
      ),
          );
  }
}