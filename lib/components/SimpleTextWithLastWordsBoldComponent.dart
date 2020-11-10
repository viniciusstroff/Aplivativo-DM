import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleTextWithLastWordsBoldComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String textBold;
  final String text;
  SimpleTextWithLastWordsBoldComponent({Key key, this.textBold, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Colors.black, fontSize: 16.0, letterSpacing: 0.5),
                children: <TextSpan>[
                  TextSpan(text: text),
                  TextSpan(
                      text: textBold,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              textAlign: TextAlign.justify,
            )),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}