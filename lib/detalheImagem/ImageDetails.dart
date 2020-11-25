import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  final String title;
  final String text;
  final String image;
  final String tag;
  final double height;
  final double width;
  ImageDetails({this.title, this.text, this.image, this.tag, this.height, this.width});

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
                [expandedImage(context, tag:this.tag, image:this.image, text:this.text, width: this.width, height: this.height)]),
          )
            ],
          ),
        ));
  }
}

Widget expandedImage(context, {String tag, String image, String text, double width, double height}) {
  return Column(

    children: <Widget>[
      GestureDetector(
        child: Hero(
          tag: tag,
          child: Container(
            child: Image.asset(
              image,
              width: width,
              height: height,
            ),
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
