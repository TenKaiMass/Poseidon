import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils.dart';


class RecherchePage extends StatefulWidget {
  final User user;
  const RecherchePage({Key? key, required this.user, required int selectedIndex}) : super(key: key);

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(user: widget.user,selectedIndex: 2));}}
      