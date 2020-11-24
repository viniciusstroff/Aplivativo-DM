import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class InsulinaHomePage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Insulina'),
        body: Container(
          color: Colors.grey[400],
          child: ListView(
          scrollDirection: Axis.vertical,
          children:[
            Container(
              
                child: 
                  Column(
                    children: [
                      
                      CategoryRowWidget(
                          title: 'O Advento da Insulina ', route: '/insulina-advento'),
                      CategoryRowWidget(
                          title: 'Cronologia da Insulina', route: '/insulina-cronologia'),
                      CategoryRowWidget(
                          title: 'Tipos de insulina e tempo de ação', route: '/insulina-tipos-tempo-de-acao'),
                       CategoryRowWidget(
                          title: 'Insulina NPH', route: '/insulina-nph'),
                      
                        
                          
                    ],
                  )
            ),
            // )
          ],
        )));
  }
}
