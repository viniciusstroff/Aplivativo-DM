import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class GlicemiaHomePage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Monitoração da Glicemia'),
        body: Container(
          // color: Colors.grey[400],
          child: ListView(
          scrollDirection: Axis.vertical,
          children:[
            Container(
              
                child: 
                  Column(
                    children: [
                      
                      CategoryRowWidget(
                          title: 'Automonitoração', route: '/glicemia-automonitoracao'),
                      CategoryRowWidget(
                          title: 'Glicemia Capilar', route: '/glicemia-capilar'),
                      CategoryRowWidget(
                          title: 'Sistema Flash', route: '/glicemia-sistema-flash'),
                      CategoryRowWidget(
                          title: 'Sensor de Monitorização de Glicose Contínua', route: '/glicemia-sensor-de-monitorizacao-de-glicose-continua'),
                      
                        
                          
                    ],
                  )
            ),
            // )
          ],
        )));
  }
}
