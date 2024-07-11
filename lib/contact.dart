import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.email),
            title: Text(
              'amielfranzb@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              '0919-931-3418',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(Icons.facebook), // Use Icons.facebook
            title: Text(
              'https://www.facebook.com/amielfranz.bagui',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(Icons.camera), // Use Icons.camera for Instagram
            title: Text(
              'https://www.instagram.com/franz.rodriguez31',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(Icons.code), // Use Icons.code for GitHub
            title: Text(
              'https://github.com/MrFranzu',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}