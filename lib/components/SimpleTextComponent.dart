import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleTextComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;
  final double textSize;
  SimpleTextComponent({Key key, this.text, this.textSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Text(
          text,
          style: TextStyle(
              fontSize: textSize, letterSpacing: 0.5, color: Colors.black),
        ),
      ),
    ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}
