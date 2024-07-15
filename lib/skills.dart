import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Technical Skills:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          const SizedBox(height: 10),
          _buildSkillItem(context, 'Video Editing', Icons.video_call),
          _buildSkillItem(context, 'Excel Data Filtering', Icons.filter_list),
          _buildSkillItem(context, 'SQL', Icons.storage),

          const SizedBox(height: 20),
          const Text(
            'Non-technical Skills:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          const SizedBox(height: 10),
          _buildSkillItem(context, 'Willing to Learn', Icons.lightbulb),
          _buildSkillItem(context, 'Adaptive', Icons.autorenew),
          _buildSkillItem(context, 'Time Management', Icons.schedule),
        ],
      ),
    );
  }

  Widget _buildSkillItem(BuildContext context, String skill, IconData icon) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Icon(icon, color: theme.colorScheme.primary),
          const SizedBox(width: 10),
          Text(
            skill,
            style: TextStyle(fontSize: 18, color: textColor),
          ),
        ],
      ),
    );
  }
}
