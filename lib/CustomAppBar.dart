import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double height = 60;
  final String title;

  CustomAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // SliverAppBar(
        //   floating: true,
          
        
        //   // expandedHeight: 200.0,
        //   flexibleSpace: FlexibleSpaceBar(
        //       centerTitle: true,
        //       title: Text(
        //         title,
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 25.0,
        //         ),
        //       ),
        //     ),
        //   // shape: RoundedRectangleBorder(
        //   //   borderRadius: BorderRadius.vertical(
        //   //     bottom: Radius.circular(20),
        //   //   ),
        //   // ),
        // )
        CustomSliverAppBar(title: title,)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
