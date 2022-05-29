import 'package:itec/models/badges.dart';

class CustomUser {
  final String uid;

  CustomUser({required this.uid});
}

class UserData {
  final String uid;
  Badges badges = Badges();

  UserData({required this.uid});

  
}
