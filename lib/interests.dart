import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Interests:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Specifications of Smartphones'),
          Text('Front-end Development'),
          
          SizedBox(height: 20),
          Text(
            'Notable Projects or Publications:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Simple website about myself'),
          Text('Filesystem using Java OOP'),
      
        ],
      ),
    );
  }
}
