import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class HipoglicemiaCetoacidoseHomePage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: '  Hipoglicemia e\n Cetoacidose'),
        body: Container(
          // color: Colors.grey[400],
          child: ListView(
          scrollDirection: Axis.vertical,
          children:[
            Container(
              
                child: 
                  Column(
                    children: [
                      
                      CategoryRowWidget(title: 'Hipoglicemia', route: '/hipoglicemia-homepage'),

                      CategoryRowWidget(
                          title: 'Cetoacidose Diabética - CAD', route: '/glicemia-cetoacidose-diabetica-homepage'),
                      
                        
                          
                    ],
                  )
            ),
            // )
          ],
        )));
  }
}
