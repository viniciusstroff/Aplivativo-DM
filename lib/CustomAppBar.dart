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
        CustomSliverAppBar(title: title,)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
