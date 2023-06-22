

  import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';


  double getRelativeSize(BuildContext context, double baseSize) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return baseSize * fem;
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

    Widget buildSeparatorBar(BuildContext context, double fem,double top) {
    return Positioned(
      left: getRelativeSize(context, 39),
      top: getRelativeSize(context, top),
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