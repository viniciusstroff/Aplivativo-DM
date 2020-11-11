import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SimpleTextWithLinkComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;
  final String url;
  int number;
  SimpleTextWithLinkComponent(
      {Key key, this.text, this.url, this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    number = number ++;
    final TextSpan textSpan = text != null
        ? TextSpan(
            text: '$number. $text',
            style: TextStyle(color: Colors.black, fontSize: 16),
          )
        : TextSpan(
            text: '$number.',
            style: TextStyle(color: Colors.black, fontSize: 16),
          );
    return Container(
      margin: EdgeInsets.all(10),
      child: RichText(
        // softWrap: true,
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            textSpan,
            TextSpan(
              text: url,
              style: new TextStyle(color: Colors.blue, fontSize: 15, ),
              recognizer: new TapGestureRecognizer()
                ..onTap = () {
                  _launchURL(url);
                },
            ),
          ],
        ),
      ),
    );
  }


_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Unable to open URL $url');
  }
}

  @override
  Size get preferredSize => const Size.fromHeight(150.0);


}
