import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils.dart';


class FavorisPage extends StatefulWidget {
  final User user;
  const FavorisPage({Key? key, required this.user, required int selectedIndex}) : super(key: key);

  @override
  State<FavorisPage> createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(user: widget.user,selectedIndex: 3));}}
      