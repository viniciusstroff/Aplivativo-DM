import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';

class CetoacidoseDiabeticaHomePage extends StatefulWidget {
  @override
  _CetoacidoseDiabeticaHomePageState createState() =>
      _CetoacidoseDiabeticaHomePageState();
}

class _CetoacidoseDiabeticaHomePageState extends State<CetoacidoseDiabeticaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Cetoacidose Diabética - CAD'),
        body: Container(
          child: ListView(
          scrollDirection: Axis.vertical,
          children:[
            Container(
              
                child: 
                  Column(
                    children: [
                      
                      CategoryRowWidget(
                          title: 'Cetoacidose Diabetetica CAD', route: '/glicemia-cetoacidose-diabetica'),
                      CategoryRowWidget(
                          title: 'Sinais e Sintomas', route: '/glicemia-cetoacidose-diabetica-sinais-e-sintomas'),
                      CategoryRowWidget(
                          title: 'Tratamento', route: '/glicemia-cetoacidose-diabetica-tratamento')

                    ],
                  )
            ),
            // )
          ],
        )));
  }

}
