import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rental_app/data/models/car.dart';

class FirebaseData {
  final FirebaseFirestore firestore;

  FirebaseData({required this.firestore});

  Future<List<Car>> getCars() async {
    var snapshot = await firestore.collection('cars').get();
    return snapshot.docs.map((doc) => Car.fromMap(doc.data())).toList();
  }
}
