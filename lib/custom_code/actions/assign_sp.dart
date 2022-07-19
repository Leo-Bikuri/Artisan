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

  listener = requestReference.snapshots().listen((querySnapshot) async {
    // Do something with change
    if (serviceProviders.isEmpty) {
      await listener.cancel();
      return "";
    }
    final data = querySnapshot.data() as Map<String, dynamic>;
    if (data['status'] != null) {
      if (data['status'] == "accepted") {
        await listener.cancel();
        return "Service provider";
      }
    }

    if (data["status"] != null) {
      if (data['status'] == "decline") {
        serviceProviders.removeAt(0);
        print(serviceProviders[0]);
        final requestsUpdateData =
            createRequestsRecordData(spId: serviceProviders[0], status: null);
        requestReference.update(requestsUpdateData);
        triggerPushNotification(
          notificationTitle: 'Job Request',
          notificationText: notificationText(currentUserDisplayName),
          userRefs: [serviceProviders[0]],
          initialPageName: 'home2',
          parameterData: {},
        );
      }
    }

    //trigger push notification
    //updatedocument
  });
}
