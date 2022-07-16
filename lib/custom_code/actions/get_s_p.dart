// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_core/firebase_core.dart';

Future<List<String>> getSP(LatLng userLocation) async {
  // Add your function code here!
  CollectionReference service_providers =
      FirebaseFirestore.instance.collection('service-providers');

  QuerySnapshot querySnapshot = await service_providers.get();

  final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  return allData;
}
