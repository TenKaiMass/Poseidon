import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileCustomizationPage extends StatefulWidget {
  final User user;

  const ProfileCustomizationPage({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfileCustomizationPage> createState() => _ProfileCustomizationPageState();
}

class _ProfileCustomizationPageState extends State<ProfileCustomizationPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    try {
      final snapshot = await FirebaseFirestore.instance.collection('Users').doc(widget.user.uid).get();
      final data = snapshot.data() as Map<String, dynamic>;

      _usernameController.text = data['username'] ?? '';
      _bioController.text = data['bio'] ?? '';
      _locationController.text = data['location'] ?? '';
    } catch (error) {
      // Handle error
    }
  }

  Future<void> _saveProfile() async {
    String username = _usernameController.text.trim();
    String bio = _bioController.text.trim();
    String location = _locationController.text.trim();

    try {
      await FirebaseFirestore.instance.collection('Users').doc(widget.user.uid).set({
        'username': username.isEmpty ? '' : username,
        'bio': bio.isEmpty ? '' : bio,
        'location': location.isEmpty ? '' : location,
      });

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Profile'),
            content: const Text('Votre profil a été mis à jour avec succès.'),
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
    } catch (error) {
      // Handle error
    }
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
        title: const Text('Profile Customization'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _bioController,
              decoration: const InputDecoration(
                labelText: 'Bio',
              ),
            ),
            TextField(
              controller: _locationController,
              decoration: const InputDecoration(
                labelText: 'Location',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saveProfile,
              child: const Text('Sauvegarder'),
            ),
          ],
        ),
      ),
    );
  }
}
