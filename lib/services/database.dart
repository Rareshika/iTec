import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itec/models/badges.dart';
import 'package:itec/models/user.dart';

class DatabaseService {
  final String uid;

  DatabaseService({required this.uid});

  final CollectionReference badgesCollection =
      FirebaseFirestore.instance.collection('badges');

  Future updateUserData(Map<String, dynamic>? mapa) async {
    print("TEEEEST: $mapa");
    return await badgesCollection.doc(uid).set(mapa);
  }

  Future<Map<String, dynamic>> getData() async {
    Map<String, dynamic> finalData = {};
    await badgesCollection.get().then((event) {
      for (var doc in event.docs) {
        if (doc.id == uid) {
          final data = doc.data() as Map<String, dynamic>;
          finalData = data;
        }
      }
    });
    return finalData;
  }
}
