// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_core/firebase_core.dart';

Future<String> getSP(
  LatLng userLocation,
  String skill,
) async {
  // Add your function code here!
  CollectionReference serviceProviders =
      FirebaseFirestore.instance.collection('service-providers');

  QuerySnapshot querySnapshot = await serviceProviders.get();

  List<dynamic> allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  double userLat = userLocation.latitude;
  double userLng = userLocation.longitude;
  String spId = '';

  allData.forEach((item) {
    if (item['skill'] == skill) {
      double spLat = item['location'].latitude;
      double spLng = item['location'].longitude;
      double distance = calculateDistance(userLat, userLng, spLat, spLng);
      if (distance < 20) {
        spId = item['uid'];
      }
    }
  });

  return spId;
}
