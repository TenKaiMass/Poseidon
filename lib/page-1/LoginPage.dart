import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/user.dart';
import '../utils.dart';

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

  Widget _Logo(BuildContext context){
    double fem = MediaQuery.of(context).size.width / 393;
    return Container(
      // cursiveitalicmultipurpsetypogr (29:203)
      margin: EdgeInsets.fromLTRB(0 * fem, 120 * fem, 0 * fem, 117 * fem),
      width: 180 * fem,
      height: 180 * fem,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100 * fem),
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
            height: 1.5 * ffem / fem,
            color: const Color(0xffffffff),
                    )
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : '$errorMessage',
        style: GoogleFonts.lato(
          color: Colors.green,
        ));
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(isLogin ? 'Connexion' : "s'enregistrer"),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? 'Crée un compte' : 'Déjà un compte'),
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
            _Logo(context),
            _entryField('email', _controllerEmail),
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
