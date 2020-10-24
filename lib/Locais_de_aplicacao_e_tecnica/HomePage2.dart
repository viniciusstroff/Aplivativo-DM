import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class HomePage2 extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Técnincas de aplicação'),
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
                          title: 'Agulhas', route: '/agulhas'),
                      CategoryRowWidget(
                          title: 'Onde será aplicada a insulina', route: '/aplicarInsulina'),
                      CategoryRowWidget(
                          title: 'Homogeneização NPH', route: '/nph'),
                      CategoryRowWidget(
                          title: 'i-Port', route: '/iport'),
                      CategoryRowWidget(
                        title: 'Número de Aplicações no tratamento intensivo', route: '/tratamento-intensivo-aplicacoes'),
                      CategoryRowWidget(
                      title: 'Locais de Aplicação de Insulina', route: '/locais-de-aplicacao'),
                      //  CategoryRowWidget(
                      // title: 'Descarte de insumos domiciliar', route: '/descarte-insumos-domiciliar'),

                      // CategoryRowWidget(
                      //   title: 'Armazenamento, validade e transporte das insulinas', route: '/armazenamento-transporte-validade-insulina')
                        
                          
                    ],
                  )
            ),
            // )
          ],
        )));
  }
}
