// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_core/firebase_core.dart';

Future assignSp(
  List<DocumentReference> serviceProviders,
  DocumentReference requestReference,
) async {
  // Add your function code here!

  final reference = FirebaseFirestore.instance
      .collection('service-providers')
      .doc(requestReference.toString());
  var listener;
  String outcome;
  bool loop;
  loop = true;
  while (loop) {
    listener = reference.snapshots().listen((querySnapshot) {
      // Do something with change
      bool state;
      if (querySnapshot.data()["status"] == "accepted") {
        outcome = "Service provider";
        listener.cancel();
        state = false;
      }
      serviceProviders.removeAt(0);
      //trigger push notification
      //updatedocument
      if (serviceProviders.isEmpty) {
        outcome = "No service provider";
        listener.cancel();
        state = false;
      }
      loop = state;
    });
  }
  return outcome;
}
