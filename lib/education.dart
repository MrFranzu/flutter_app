import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          _buildEducationItem(
            context,
            'BS Information Technology',
            'Batangas State University\n2021-?',
            Icons.computer,
          ),
          _buildEducationItem(
            context,
            'STEM',
            'Sovereign Shepherd School of Values and Learning\n2019-2021',
            Icons.science,
          ),
          _buildEducationItem(
            context,
            'High School',
            'Sovereign Shepherd School of Values and Learning\n2015-2019',
            Icons.school,
          ),
          _buildEducationItem(
            context,
            'Elementary',
            'Sovereign Shepherd School of Values and Learning\n2009-2015',
            Icons.child_care,
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(BuildContext context, String title, String subtitle, IconData icon) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(icon, color: theme.colorScheme.primary),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
