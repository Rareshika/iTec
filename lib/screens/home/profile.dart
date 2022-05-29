import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:itec/models/badges.dart';
import 'package:itec/services/database.dart';
import 'package:provider/provider.dart';
import 'package:itec/models/user.dart';

List<String> badgeNames = [
  'global_health',
  'polio',
  'maternal_mortality',
  'child_mortaliy',
  'malaria',
  'suicide',
  'burden_of_diseases',
  'eradication_of_diseases',
  'cause_of_death',
  'financing_healthcare',
  'smoking'
];

class BadgeDisplay extends StatefulWidget {
  const BadgeDisplay({Key? key}) : super(key: key);

  @override
  State<BadgeDisplay> createState() => _BadgeDisplayState();
}

class _BadgeDisplayState extends State<BadgeDisplay> {
  Map<String, dynamic>? mapa = null;
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Badgeeees'),
      ),
      
    );
    
  }
}
