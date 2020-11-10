import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleTextWithSomeWordsBoldComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String textBold;
  final String text;
  final String underlinedText;
  final String text2;
  SimpleTextWithSomeWordsBoldComponent(
      {Key key, this.textBold, this.text, this.underlinedText, this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle =
        TextStyle(color: Colors.black, fontSize: 16.0, letterSpacing: 0.5);
    String hasText2 = (text2 != null) ? text2 : "";
    String hasUnderlinedText =
        ((underlinedText != null) && (text2 == null)) ? underlinedText : '';
    String hasUnderlinedText2 =
        ((underlinedText != null) && (text2 != null)) ? underlinedText : '';
    TextDecoration underlinedStyle = TextDecoration.underline;
    FontWeight boldStyle = FontWeight.bold;

    return Container(
      child: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                style: defaultStyle,
                children: <TextSpan>[
                  TextSpan(
                      text: textBold, style: TextStyle(fontWeight: boldStyle)),
                  TextSpan(
                      text: hasUnderlinedText,
                      style: TextStyle(decoration: underlinedStyle)),
                  TextSpan(text: text),
                  TextSpan(
                      text: hasUnderlinedText2,
                      style: TextStyle(
                          decoration: underlinedStyle, fontWeight: boldStyle)),
                  TextSpan(text: hasText2)
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
