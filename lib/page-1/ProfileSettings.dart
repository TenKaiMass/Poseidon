import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileCustomizationPage extends StatefulWidget {
  final User user;
  const ProfileCustomizationPage({Key? key, required this.user})
      : super(key: key);

  @override
  State<ProfileCustomizationPage> createState() =>
      _ProfileCustomizationPageState();
}

class _ProfileCustomizationPageState extends State<ProfileCustomizationPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  TextEditingController _locationController = TextEditingController();

  Future<void> _saveProfile() async {
    String username = _usernameController.text.trim();
    String bio = _bioController.text.trim();
    String location = _locationController.text.trim();

    // Save profile data to Firebase Firestore
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(widget.user.uid)
        .set({
      'username': username.isEmpty ? '' : username,
      'bio': bio.isEmpty ? '' : bio,
      'location': location.isEmpty ? '' : location,
    });

    // Show a success message or navigate to another screen
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('profile'),
          content: const Text('Votre profile a correctement été mis à jour.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _bioController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Customization'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _bioController,
              decoration: InputDecoration(
                labelText: 'Bio',
              ),
            ),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Location',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saveProfile,
              child: Text('sauvegarder'),
            ),
          ],
        ),
      ),
    );
  }
}
