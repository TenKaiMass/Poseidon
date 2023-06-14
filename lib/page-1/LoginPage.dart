import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Acceuil.dart';

class SceneLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // iphone14pro1loginpagetyi (29:204)
        padding: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 16 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32 * fem),
          gradient: const LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[
              Color(0xff04e6ad),
              Color(0xff36c59c),
              Color(0xfff44a5d)
            ],
            stops: <double>[0, 0.208, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group48095465Nhr (29:268)
              margin:
                  EdgeInsets.fromLTRB(28 * fem, 0 * fem, 37 * fem, 160 * fem),
              padding: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // cursiveitalicmultipurpsetypogr (29:203)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 120 * fem, 0 * fem, 117 * fem),
                    width: 180 * fem,
                    height: 180 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100 * fem),
                      child: Image.asset(
                        'assets/page-1/images/cursive-italic-multipurpse-typography-logo-design-brand-identity-clean-comic-style-for-design-company-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // frame3Jzp (29:185)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 6 * fem, 18 * fem),
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 6.5 * fem, 13 * fem, 6.5 * fem),
                    width: 312 * fem,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        hintText: 'email Id',
                        hintStyle: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x82ffffff),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Color(0x82ffffff),
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // frame4YuA (29:182)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 6 * fem, 16 * fem),
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 7 * fem, 13 * fem, 6 * fem),
                    width: 312 * fem,

                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        hintText: 'mot de passe',
                        hintStyle: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x82ffffff),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Color(0x82ffffff),
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // motdepasseoubliDEc (29:196)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Text(
                      'Mot de passe oublié ?',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 11 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      // your function her
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scene(),
                        ),
                      );
                    },
                    child:
                      Container(
                        // frame5hQg (29:188)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 14 * fem),
                        width: double.infinity,
                        height: 36 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xfff88c70),
                          borderRadius: BorderRadius.circular(30 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Connexion',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                  ),
                  Container(
                    // autogrouplgonBKr (VNLS8N4US3ZkG6J9WyLgoN)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // line1JvG (29:199)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 12 * fem, 0 * fem),
                          width: 140 * fem,
                          height: 1 * fem,
                          decoration: const BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          // orDnL (29:202)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 11 * fem, 0 * fem),
                          child: Text(
                            'or',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // line2wiL (29:200)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          width: 140 * fem,
                          height: 1 * fem,
                          decoration: const BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupvynuf8Y (VNLSJSc1ma1M43g8DovynU)
                    margin: EdgeInsets.fromLTRB(
                        94 * fem, 0 * fem, 100 * fem, 0 * fem),
                    width: double.infinity,
                    height: 50 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup9ivaaFW (VNLSQSS2CcJVmmjcgz9iVA)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 28 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              10 * fem, 11 * fem, 10 * fem, 10 * fem),
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/page-1/images/ellipse-2.png',
                              ),
                            ),
                          ),
                          child: Center(
                            // searchHQp (29:197)
                            child: SizedBox(
                              width: 29 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/page-1/images/search.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup8rbn1rc (VNLSW6wFVp8v7r1oTz8rbN)
                          padding: EdgeInsets.fromLTRB(
                              10 * fem, 11 * fem, 10 * fem, 10 * fem),
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/page-1/images/ellipse-1.png',
                              ),
                            ),
                          ),
                          child: Center(
                            // twitterXa4 (29:198)
                            child: SizedBox(
                              width: 29 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/page-1/images/twitter.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // homeindicatorTic (I29:216;5:3093)
              margin:
                  EdgeInsets.fromLTRB(126 * fem, 0 * fem, 130 * fem, 0 * fem),
              width: double.infinity,
              height: 5 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100 * fem),
                color: const Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
