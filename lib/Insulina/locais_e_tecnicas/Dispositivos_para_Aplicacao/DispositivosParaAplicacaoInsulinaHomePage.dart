import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class DispositivosParaAplicacaoInsulinaHomePage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Dispositivos para aplicação da insulina'),
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
                          title: 'Canetas', route: '/canetas'),
                      CategoryRowWidget(
                          title: 'Seringas', route: '/seringas'),
                      CategoryRowWidget(
                          title: 'Agulhas', route: '/agulhas'),
                      CategoryRowWidget(
                          title: 'iPort', route: '/iport'),

                    ],
                  )
            ),
            // )
          ],
        )));
  }
}
