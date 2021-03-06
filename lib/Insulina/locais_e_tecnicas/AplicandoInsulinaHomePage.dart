import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class AplicandoInsulinaHomePage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Aplicando Insulina'),
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
                          title: 'Dispositivos para aplicação de insulina', route: '/dispositivos-para-aplicacao-homepage'),
                      CategoryRowWidget(
                          title: 'Técninca de aplicação', route: '/tecnica-de-aplicacao-de-insulina-homepage'),
                      CategoryRowWidget(
                          title: 'Locais de aplicação de insulina', route: '/locais-de-aplicacao'),

                    ],
                  )
            ),
            // )
          ],
        )));
  }
}
