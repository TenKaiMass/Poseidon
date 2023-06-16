import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils.dart';


class MessagePage extends StatefulWidget {
  final User user;
  const MessagePage({Key? key, required this.user, required int selectedIndex}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(user: widget.user,selectedIndex: 1));}}
      