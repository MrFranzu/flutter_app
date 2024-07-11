import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: const [
         Text(
            'Technical Skills:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Video Editing'),
          Text('Excel data FIltering'),
          Text('SQL'),
      
          SizedBox(height: 20),
          Text(
            'Non-technical Skills:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Willing to learn'),
          Text('Adaptive'),
          Text('Time management'),
        ],
      ),
    );
  }
}
