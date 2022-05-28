import 'package:itec/models/user.dart';
import 'package:itec/screens/authenticate/authenticate.dart';
import 'package:itec/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);
    print(user);

    // return either Home or Authenthicate Widget
    return user == null ? Authenticate() : Home();
  }
}
