// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_core/firebase_core.dart';
import '../../backend/push_notifications/push_notifications_util.dart';
import '../../auth/auth_util.dart';

Future assignSp(
  List<DocumentReference> serviceProviders,
  DocumentReference requestReference,
) async {
  // Add your function code here!

  // final reference =
  //     ServiceProvidersRecord.collection.doc(requestReference.toString());
  var listener;
  String outcome;
  listener = requestReference.snapshots().listen((querySnapshot) {
    // Do something with change
    if (serviceProviders.isEmpty) {
      outcome = "No service provider";
      listener.cancel();
    }
    final data = querySnapshot.data() as Map<String, dynamic>;
    if (data['status'] != null) {
      if (data['status'] == "accepted") {
        outcome = "Service provider";
        listener.cancel();
      }
    }
    serviceProviders.removeAt(0);
    print(serviceProviders[0]);
    final requestsUpdateData = createRequestsRecordData(
      spId: serviceProviders[0],
    );
    requestReference.update(requestsUpdateData);
    triggerPushNotification(
      notificationTitle: 'Job Request',
      notificationText: notificationText(currentUserDisplayName),
      userRefs: [getServiceProvider(serviceProviders.toList())],
      initialPageName: 'home2',
      parameterData: {},
    );
    //trigger push notification
    //updatedocument
  });
  return outcome;
}
