import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ReferenceTextComponent extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Alignment alignment;
  final double fontSize;
  ReferenceTextComponent({Key key, this.text, this.alignment = Alignment.bottomRight, this.fontSize = 13}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: alignment,
      child: Text(text ,style: TextStyle(fontSize: fontSize, color:Colors.black), textAlign: TextAlign.justify)
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}

 