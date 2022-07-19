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

Future<String> assignSp(
  List<DocumentReference> spRef,
  DocumentReference requestReference,
  DocumentSnapshot<Object> querySnapshot,
  dynamic listener,
) async {
  if (!spRef.isEmpty) {
    listener.cancel();
    return "No service provider found";
  }
  final data = querySnapshot.data() as Map<String, dynamic>;
  if (data['status'] != null) {
    if (data['status'] == "accepted") {
      listener.cancel();
      return "Service provider found";
    }
  }
  spRef.isEmpty ? '' : spRef.removeAt(0);
  print(spRef[0]);
  final requestsUpdateData = createRequestsRecordData(
    spId: spRef[0],
    status: "re-assigning",
  );
  requestReference.update(requestsUpdateData);
  triggerPushNotification(
    notificationTitle: 'Job Request',
    notificationText: notificationText(currentUserDisplayName),
    userRefs: [spRef[0]],
    initialPageName: 'home2',
    parameterData: {},
  );
}
