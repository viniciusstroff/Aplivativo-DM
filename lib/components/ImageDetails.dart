import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  final String title;
  final String text;
  final String image;
  final String tag;
  ImageDetails([this.title, this.text, this.image, this.tag]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: CustomAppBar(title:''),
        body: Material(
          child: CustomScrollView(
            anchor: 0.1,
            slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
                [expandedImage(context, this.tag, this.image, this.text)]),
          )
            ],
          ),
        ));
  }
}

Widget expandedImage(context, [tag, image, text]) {
  return Column(

    children: <Widget>[
      GestureDetector(
        child: Hero(
          tag: tag,
          child: Image.asset(
            image,
            width: MediaQuery.of(context).size.width ,
            // height: 800,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      Text(text != null ? text : '',
          style: TextStyle(
            fontSize: 16,
          ))
    ],
  );
}
