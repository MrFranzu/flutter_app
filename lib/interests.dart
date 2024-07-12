import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Professional Interests:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          const SizedBox(height: 10),
          _buildInterestItem(context, 'Specifications of Smartphones', Icons.phone_android),
          _buildInterestItem(context, 'Front-end Development', Icons.web),

          const SizedBox(height: 20),
          const Text(
            'Notable Projects or Publications:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          const SizedBox(height: 10),
          _buildInterestItem(context, 'Simple website about myself', Icons.web_asset),
          _buildInterestItem(context, 'Filesystem using Java OOP', Icons.code),
        ],
      ),
    );
  }

  Widget _buildInterestItem(BuildContext context, String interest, IconData icon) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Icon(icon, color: theme.colorScheme.primary),
          const SizedBox(width: 10),
          Text(
            interest,
            style: TextStyle(fontSize: 18, color: textColor),
          ),
        ],
      ),
    );
  }
}
