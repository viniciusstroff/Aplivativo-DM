import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglecemiaPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaComoReverterPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaTablePage.dart';

class HipoglicemiaHomePage extends StatefulWidget {
  @override
  _HipoglicemiaHomePageState createState() => _HipoglicemiaHomePageState();
}

class _HipoglicemiaHomePageState extends State<HipoglicemiaHomePage> {
 static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Hipoglicemia'),
        body: Container(
          child: ListView(
          scrollDirection: Axis.vertical,
          children:[
            Container(
              
                child: 
                  Column(
                    children: [
                      
                      CategoryRowWidget(
                          title: 'Hipoglicemia', route: '/hipoglicemia'),
                      CategoryRowWidget(
                          title: 'Níveis de Hipoglicemia', route: '/hipoglicemia-table'),
                      CategoryRowWidget(
                          title: 'Hipoglicemia como reverter?', route: '/hipoglicemia-como-reverter')

                    ],
                  )
            ),
            // )
          ],
        )));
  }

}
