import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/Welcome_screen.png',
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Login': (data) async => LoginWidget(),
  'Register': (data) async => RegisterWidget(),
  'forgotPassword': (data) async => ForgotPasswordWidget(),
  'completeProfile': (data) async => CompleteProfileWidget(),
  'clientMenu': (data) async => NavBarPage(initialPage: 'clientMenu'),
  'editProfile': (data) async => EditProfileWidget(
        userEmail: await getDocumentParameter(
            data, 'userEmail', UsersRecord.serializer),
        userDisplay: await getDocumentParameter(
            data, 'userDisplay', UsersRecord.serializer),
        userPhoto: getParameter(data, 'userPhoto'),
      ),
  'search': (data) async => SearchWidget(
        searchTerm: getParameter(data, 'searchTerm'),
      ),
  'chooseLocation': (data) async => ChooseLocationWidget(
        skillType: getParameter(data, 'skillType'),
        defaultLocation: getParameter(data, 'defaultLocation'),
      ),
  'currentJobs': (data) async =>
      hasMatchingParameters(data, {'userLocation', 'skill'})
          ? CurrentJobsWidget(
              userLocation: getParameter(data, 'userLocation'),
              skill: getParameter(data, 'skill'),
            )
          : NavBarPage(initialPage: 'currentJobs'),
  'history': (data) async => HistoryWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
