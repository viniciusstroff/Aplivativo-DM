import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SimpleTitleComponent extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final double textSize;
  final Alignment align;
  SimpleTitleComponent({Key key, this.text, this.textSize = 18, this.align = Alignment.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          alignment: this.align,
          margin: EdgeInsets.only(top:10, left:10, right:10,bottom: 10),
          child: Text(
            text,
            style: TextStyle(fontSize: textSize,letterSpacing: 0.5, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}

