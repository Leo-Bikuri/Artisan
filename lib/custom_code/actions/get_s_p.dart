// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_core/firebase_core.dart';

Future<DocumentReference> getSP(
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
  DocumentReference serviceProviderReference =
      getServiceProvider(allData, skill, userLat, userLng);

  return serviceProviderReference;
}
