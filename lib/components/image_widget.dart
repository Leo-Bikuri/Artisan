import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key key}) : super(key: key);

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      child: InkWell(
        onTap: () async {
          Scaffold.of(context).openDrawer();
        },
        child: Container(
          width: 40,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            valueOrDefault<String>(
              currentUserPhoto,
              'https://www.freepik.com/free-icon/user_15486377.htm#query=default%20avatar&position=3&from_view=keyword',
            ),
          ),
        ),
      ),
    );
  }
}
