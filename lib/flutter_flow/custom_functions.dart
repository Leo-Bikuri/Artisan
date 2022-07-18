import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double calculateDistance(
  double lat1,
  double long1,
  double lat2,
  double long2,
) {
  // Add your function code here!
  double radEarth = 6.3781 * (math.pow(10.0, 6.0));
  double phi1 = lat1 * (math.pi / 180);
  double phi2 = lat2 * (math.pi / 180);

  double delta1 = (lat2 - lat1) * (math.pi / 180);
  double delta2 = (long2 - long1) * (math.pi / 180);

  double cal1 = math.sin(delta1 / 2) * math.sin(delta1 / 2) +
      (math.cos(phi1) *
          math.cos(phi2) *
          math.sin(delta2 / 2) *
          math.sin(delta2 / 2));

  double cal2 = 2 * math.atan2((math.sqrt(cal1)), (math.sqrt(1 - cal1)));
  double distance = radEarth * cal2;
  distance = distance / 1000;

  return distance;
}

String notificationText(String userName) {
  // Add your function code here!
  return 'Hello you have a new job request from $userName';
}

int getDistance(
  LatLng userLoc,
  LatLng spLoc,
) {
  // Add your function code here!
  double lat1 = userLoc.latitude;
  double long1 = userLoc.longitude;
  double lat2 = spLoc.latitude;
  double long2 = spLoc.longitude;
  double radEarth = 6.3781 * (math.pow(10.0, 6.0));
  double phi1 = lat1 * (math.pi / 180);
  double phi2 = lat2 * (math.pi / 180);

  double delta1 = (lat2 - lat1) * (math.pi / 180);
  double delta2 = (long2 - long1) * (math.pi / 180);

  double cal1 = math.sin(delta1 / 2) * math.sin(delta1 / 2) +
      (math.cos(phi1) *
          math.cos(phi2) *
          math.sin(delta2 / 2) *
          math.sin(delta2 / 2));

  double cal2 = 2 * math.atan2((math.sqrt(cal1)), (math.sqrt(1 - cal1)));
  double distance = radEarth * cal2;
  distance = distance / 1000;

  return distance.round();
}

DocumentReference getServiceProvider(List<DocumentReference> sp) {
  // Add your function code here!
  return sp[0];
}
