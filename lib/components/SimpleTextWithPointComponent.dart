import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleTextWithPointComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;
  final double textSize;
  SimpleTextWithPointComponent({Key key, this.text, this.textSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // width: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Icon(
              Icons.fiber_manual_record,
              size: 10.0,
            ),
          ),
          Expanded(
              flex: 15,
              child: Title(
                  color: Colors.black,
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: textSize,
                        letterSpacing: 0.5,
                        color: Colors.black),
                    textAlign: TextAlign.justify,
                  )))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}

