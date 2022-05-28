import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:itec/firebase_options.dart';
import 'package:itec/models/user.dart';
import 'package:itec/screens/wrapper.dart';
import 'package:itec/services/auth.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser?>.value(
        value: AuthService().user,
        initialData: null,
        child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
