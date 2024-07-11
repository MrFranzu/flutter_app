import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/picture.jpg'), 
          ),
          SizedBox(height: 20),
          Text(
            'Amiel Franz R. Bagui',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Age: 21', 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          SizedBox(height: 10),
          Text(
            "I'm an weeb introvert person who likes to read manga/manhwa and watch anime.",
            style: TextStyle(fontSize: 15),
            ),
        ],
      ),
    );
  }
}
