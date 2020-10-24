import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget {
    final String title;
    RoundedAppBar({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new SizedBox.fromSize(
      size: preferredSize,
      child: new LayoutBuilder(builder: (context, constraint) {
        final width = constraint.maxWidth * 10;
        
        return new  ClipPath(
          clipper: CustomShape(), // this is my own class which extendsCustomClipper
          child: Container(
          // height: 150,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.toc,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(title ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),),
                  ],
                ),
              ],
            ),)
            
          ],)
          ),
        );
      }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}




class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    
    return path;
 }

  @override
    bool shouldReclip(CustomClipper oldClipper) {
    return true;
 }
}