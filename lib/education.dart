import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: const [
          ListTile(
            title: Text('BS Information Technology'),
            subtitle: Text('Batangas State University - 2021-?'),
          ),
            ListTile(
            title: Text('STEM'),
            subtitle: Text('Sovereign Shepherd School of Values and Learning - 2019-2021'),
          ),
          ListTile(
            title: Text('Highschool'),
            subtitle: Text('Sovereign Shepherd School of Values and Learning - 2015-2019'),
          ),
          ListTile(
            title: Text('Elementary'),
            subtitle: Text('Sovereign Shepherd School of Values and Learning - 2009-2015'),
          ),
        ],
      ),
    );
  }
}
