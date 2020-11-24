import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class DiabetesHomePage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Aprendendo Diabetes'),
        body: Container(
          padding: EdgeInsets.only(bottom: 0),
          child: ListView(
            
          scrollDirection: Axis.vertical,
          children:[
            Container(
              // color: Colors.black,
                child: 
                  Column(
                    children: [
                      
                      CategoryRowWidget(
                          title: 'O que é Diabetes', route: '/diabetes-o-que-e'),
                      CategoryRowWidget(
                          title: 'Sinais e Sintomas', route: '/diabetes-sinais-e-sintomas'),
                      CategoryRowWidget(
                          title: 'Tipos de Diabetes', route: '/diabetes-tipos-de-diabetes'),
                      CategoryRowWidget(
                          title: 'Avaliação e Diagnóstico', route: '/diabetes-avaliação-e-diagnostico'),
                          
                    ],
                  )
            ),
            // )
          ],
        )));
  }
}

 