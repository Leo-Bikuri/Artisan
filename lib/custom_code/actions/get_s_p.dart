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
  CollectionReference serviceProviders = ServiceProvidersRecord.collection;
  DocumentReference ServiceProviderRecordReference;
  QuerySnapshot querySnapshot = await serviceProviders.get();

  List<dynamic> allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  double userLat = userLocation.latitude;
  double userLng = userLocation.longitude;
  // allData.forEach((item) async {
  //   if (item['skill'] == skill) {
  //     double spLat = item['location'].latitude;
  //     double spLng = item['location'].longitude;
  //     double distance = calculateDistance(userLat, userLng, spLat, spLng);
  //     if (distance > 1) {
  //       serviceProviderRecordReference =
  //           await ServiceProvidersRecord.collection.doc(item['uid']);
  //     }
  //   }
  // });
  for (int i = 0; i < allData.length; i++) {
    if (allData[i]['skill'] == skill) {
      double spLat = allData[i]['location'].latitude;
      double spLng = allData[i]['location'].longitude;
      double distance = calculateDistance(userLat, userLng, spLat, spLng);
      DocumentReference reference;
      if (distance > 1) {
        reference =
            await ServiceProvidersRecord.collection.doc(allData[i]['uid']);
      }
      ServiceProviderRecordReference = reference;
    }
  }
  // print(await getServiceProvider(allData, skill, userLat, userLng));
  // return await getServiceProvider(allData, skill, userLat, userLng);
  return ServiceProviderRecordReference;
}
