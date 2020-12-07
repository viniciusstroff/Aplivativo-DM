import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class EmaillinkComponent extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final String email;
  final double fontSize;
  final Color fontColor;
  EmaillinkComponent({Key key, this.text, this.email, this.fontSize = 16, this.fontColor = Colors.blue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      width: MediaQuery.of(context).size.width /1.2,
      child: RichText(
        // maxLines: 2,
        softWrap: true,
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: '$text ',
              style: new TextStyle(fontSize: fontSize, color: Colors.black),
            ),
            TextSpan(
              text: '${email}',
              style: new TextStyle(color: Colors.blue, fontSize: fontSize),
              recognizer: new TapGestureRecognizer()
                ..onTap = () { _enviarEmail(email);
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

 _enviarEmail(email) async{
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email
  );

  if( await canLaunch(_emailLaunchUri.toString())){
    await launch(_emailLaunchUri.toString());
  }else{
    throw 'Problemas ao enviar email';
  }
}
