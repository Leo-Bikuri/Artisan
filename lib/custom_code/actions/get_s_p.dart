// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code

import 'package:firebase_core/firebase_core.dart';

Future<List<DocumentReference>> getSP(
  LatLng userLocation,
  String skill,
) async {
  // Add your function code here!
  CollectionReference serviceProviders = ServiceProvidersRecord.collection;
  List<DocumentReference> ServiceProviderRecordReference = [];
  QuerySnapshot querySnapshot = await serviceProviders.get();

  List<dynamic> allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  double userLat = userLocation.latitude;
  double userLng = userLocation.longitude;
  for (int i = 0; i < allData.length; i++) {
    if (allData[i]['skill'] == skill && allData[i]['available']) {
      double spLat = allData[i]['location'].latitude;
      double spLng = allData[i]['location'].longitude;
      double distance = calculateDistance(userLat, userLng, spLat, spLng);
      DocumentReference reference;
      if (distance < 20) {
        reference = ServiceProvidersRecord.collection.doc(allData[i]['uid']);
      }
      if (reference != null) {
        ServiceProviderRecordReference.add(reference);
      }
    }
  }
  return ServiceProviderRecordReference;
}
