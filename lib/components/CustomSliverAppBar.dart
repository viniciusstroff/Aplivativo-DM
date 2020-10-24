import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  static const double height = 60;
  final String title;
  final double titleSize;
  // final double collapsedHeight;

  CustomSliverAppBar({Key key, this.title, this.titleSize = 25})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // expandedHeight: 70.0,
      // collapsedHeight: 60,
      // pinned: true,]
      
     
      // flexibleSpace: FlexibleSpaceBar(
        // titlePadding: EdgeInsets.only(top:2),
        centerTitle: true,
        title: FittedBox(fit:BoxFit.fitWidth, 
          child:  Text(
            title,
            maxLines: 3,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          ),
      // ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
