import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WarningMessageComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;
  final Alignment alignment;
  final double fontSize;
  WarningMessageComponent(
      {Key key,
      this.text,
      this.alignment = Alignment.bottomRight,
      this.fontSize = 13})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        // margin: EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Column(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}
