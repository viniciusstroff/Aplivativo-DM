
import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Model/CategoryModel.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryModel categoryModel;
  final String route;

  CategoryItemWidget({Key key, @required this.categoryModel, this.route}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey.shade500,
      height: MediaQuery.of(context).size.height*0.4,
      width: MediaQuery.of(context).size.width* 0.7,

      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(color: categoryModel.color, width: 1.0),
        // borderRadius: BorderRadius.all(
        //   Radius.circular(300.0),
        // ),
        // image: new DecorationImage(
        //   image: new AssetImage('issets/images/descarte-com-florzinhas-2.png'),
        //   fit: BoxFit.cover,
        // ),
        shape: BoxShape.rectangle,
        color: categoryModel.color.withOpacity(0.4)
      ),
      child: InkWell(
        
        onTap: () {
           Navigator.pushNamed(context, this.route);
          // print(route);
        },
        child: Center(
          child: Text(
            categoryModel.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 26.0),
          ),
        ),
      ),
    );
  }
}