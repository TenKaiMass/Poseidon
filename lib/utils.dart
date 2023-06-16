import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/Acceuil.dart';
import 'package:myapp/page-1/Favoris.dart';
import 'package:myapp/page-1/Message.dart';
import 'package:myapp/page-1/Profile.dart';
import 'package:myapp/page-1/Recherche.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

TextStyle SafeGoogleFont(
  String fontFamily, {
  TextStyle? textStyle,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextBaseline? textBaseline,
  double? height,
  Locale? locale,
  Paint? foreground,
  Paint? background,
  List<Shadow>? shadows,
  List<FontFeature>? fontFeatures,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
}) {
  try {
    return GoogleFonts.getFont(
      fontFamily,
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  } catch (ex) {
    return GoogleFonts.getFont(
      "Source Sans Pro",
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}



class MyBottomNavigationBar extends StatefulWidget {
  final User user;
  final int selectedIndex;

  const MyBottomNavigationBar({
    Key? key,
    required this.user,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => getPageByIndex(index),
      ),
    );
  }

  Widget getPageByIndex(int index) {
    switch (index) {
      case 0:
        return AcceuilPage(user: widget.user, selectedIndex: index);
      case 1:
        return MessagePage(user: widget.user, selectedIndex: index);
      case 2:
        return RecherchePage(user: widget.user, selectedIndex: index);
      case 3:
        return FavorisPage(user: widget.user, selectedIndex: index);
      case 4:
        return ProfilePage(user: widget.user, selectedIndex: index);
      default:
        return AcceuilPage(user: widget.user, selectedIndex: index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _buildNavigationBarItem(
          icon: Icons.restaurant_menu,
          index: 0,
        ),
        _buildNavigationBarItem(
          imagePath: 'assets/page-1/images/uil-message-YpL.png',
          index: 1,
        ),
        _buildNavigationBarItem(
          imagePath: 'assets/page-1/images/gg-menu-grid-o-n1a.png',
          index: 2,
        ),
        _buildNavigationBarItem(
          icon: Icons.favorite,
          index: 3,
        ),
        _buildNavigationBarItem(
          icon: Icons.person,
          index: 4,
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem({
    IconData? icon,
    String? imagePath,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: icon != null
          ? Icon(
              icon,
              size: 30,
              color: _selectedIndex == index ? Colors.red : Colors.grey,
            )
          : Image.asset(
              imagePath!,
              width: 30,
              height: 26,
              color: _selectedIndex == index ? Colors.red : Colors.grey,
            ),
      label: '',
    );
  }
}

