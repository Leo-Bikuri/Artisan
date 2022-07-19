import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Icon1Widget extends StatefulWidget {
  const Icon1Widget({Key key}) : super(key: key);

  @override
  _Icon1WidgetState createState() => _Icon1WidgetState();
}

class _Icon1WidgetState extends State<Icon1Widget> {
  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 30,
      borderWidth: 1,
      buttonSize: 44,
      icon: Icon(
        Icons.menu_rounded,
        color: Color(0xFF101213),
        size: 24,
      ),
      onPressed: () async {
        await Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.leftToRight,
            duration: Duration(milliseconds: 500),
            reverseDuration: Duration(milliseconds: 500),
            child: NavBarPage(initialPage: 'clientMenu'),
          ),
        );
      },
    );
  }
}
