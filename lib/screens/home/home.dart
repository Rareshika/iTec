import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itec/models/user.dart';
import 'package:itec/screens/stories/story_select.dart';
import 'package:itec/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:itec/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  Map<String, dynamic>? mapa;

  @override
  void initState() {
    super.initState();
    final user = Provider.of<CustomUser?>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);

    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: [
          TextButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(Icons.person),
            label: Text('logout'),
          ),
          TextButton.icon(
              onPressed: () async {},
              icon: Icon(Icons.settings),
              label: Text('settings')),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.book),
              TextButton(
                child: Text('Wanna learn something new?'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StorySelect()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
