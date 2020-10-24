
import 'package:flutter/material.dart';
import 'Model/CategoryModel.dart';


class CategoryDetailScreen extends StatelessWidget {
  final CategoryModel categoryModel;

  CategoryDetailScreen({@required this.categoryModel});

  @override
  Widget build(BuildContext context) {
   double cwidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      
      backgroundColor: categoryModel.color,
      // appBar: AppBar(
      //   backgroundColor: categoryModel.color,
      //   title: Text(categoryModel.name, style: TextStyle(color: Colors.white)),
      // ),
      body: Center(
        child: Container(
           width: cwidth,
          color: categoryModel.color,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
            
              child: Column(
                children: <Widget>[
                  
                  Text(
                    categoryModel.description,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
                    textAlign: TextAlign.center
                  ),
                ],
              ),
            ),
            
          ),
        ),
      ),
    );
  }
}