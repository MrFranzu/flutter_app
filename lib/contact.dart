import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContactItem(context, Icons.email, 'amielfranzb@gmail.com'),
          _buildContactItem(context, Icons.phone, '0919-931-3418'),
          _buildContactItem(context, Icons.facebook, 'https://www.facebook.com/amielfranz.bagui'),
          _buildContactItem(context, Icons.camera, 'https://www.instagram.com/franz.rodriguez31'),
          _buildContactItem(context, Icons.code, 'https://github.com/MrFranzu'),
        ],
      ),
    );
  }

  Widget _buildContactItem(BuildContext context, IconData icon, String contactInfo) {
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
          contactInfo,
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
