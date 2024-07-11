import 'package:flutter/material.dart';
import 'personal_info.dart';
import 'education.dart';
import 'skills.dart';
import 'interests.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.person), text: 'Personal Info'),
            Tab(icon: Icon(Icons.school), text: 'Education'),
            Tab(icon: Icon(Icons.code), text: 'Skills'),
            Tab(icon: Icon(Icons.interests), text: 'Interests'),
            Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PersonalInfo(),
          Education(),
          Skills(),
          Interests(),
          Contact(),
        ],
      ),
    );
  }
}
