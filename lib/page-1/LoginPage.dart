import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/user.dart';
import '../utils.dart';
import 'Acceuil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = false;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await Auth(auth: FirebaseAuth.instance).signInWithEmailAndPassword(
        mail: _controllerEmail.text,
        mdp: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
    Navigator.pop(context);
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth(auth: FirebaseAuth.instance).createUserWithEmailAndPassword(
        mail: _controllerEmail.text,
        mdp: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _Logo() {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 20, 40, 60),
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 30,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          'assets/page-1/images/cursive-italic-multipurpse-typography-logo-design-brand-identity-clean-comic-style-for-design-company-1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(
          color: const Color(0x82ffffff),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        // hintText: 'email Id',
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
        height: 1 * ffem / fem,
        color: const Color(0xffffffff),
      ),
      obscuringCharacter: '*',
      obscureText: title == 'Mot de passe' ? true : false,
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : '$errorMessage',
        style: GoogleFonts.lato(
          color: Colors.red,
        ));
  }

  Widget _submitButton() {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return ElevatedButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xfff88c70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        minimumSize: Size(300 * fem, 50 * fem),
      ),
      child: Text(
        isLogin ? 'Connexion' : "s'enregistrer",
        style: SafeGoogleFont(
          'Poppins',
          fontSize: 17 * ffem,
          fontWeight: FontWeight.w500,
          height: 1.5,
          color: const Color(0xffffffff),
        ),
      ),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(
        isLogin ? 'Crée un compte' : 'Déjà un compte',
        style: SafeGoogleFont(
          'Poppins',
          color: const Color(0xffffffff),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(40, 8, 40, 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
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
        //padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _Logo(),
            _entryField('email Id', _controllerEmail),
            Container(padding: const EdgeInsets.fromLTRB(40, 8, 40, 20)),
            _entryField('Mot de passe', _controllerPassword),
            _errorMessage(),
            _submitButton(),
            _loginOrRegisterButton(),
          ],
        ),
      ),
    );
  }
}
