import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HiperlinkComponent extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final String url;
  final double fontSize;
  final Color fontColor;
  HiperlinkComponent({Key key, this.text, this.url, this.fontSize = 14, this.fontColor = Colors.blue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /1.2,
      child: RichText(
        // maxLines: 2,
        softWrap: true,
        textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  new TextSpan(
                    text: '${url}',
                    style: new TextStyle(color: Colors.blue, fontSize: fontSize),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () { _launchURL(url);
                    },
                  ),
                ],
              ),
  ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}

_launchURL(String url)  async{

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Unable to open URL $url');
  }
}
