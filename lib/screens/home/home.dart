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
      backgroundColor: Color.fromARGB(255, 188, 215, 190),
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.green,
        elevation: 0.0,
        actions: [
          TextButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(Icons.person, color: Colors.white),
            label: Text(
              'logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Icon(
                  Icons.book,
                  color: Color.fromARGB(255, 54, 196, 58),
                  size: 50,
                ),
              ),

              //Text("Welcome back"),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: SizedBox(
                  height: 75,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 54, 196, 58),
                    ),
                    child: Text('Wanna learn something new?'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StorySelect()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
