import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';



class InsumosHomePage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Insumos'),
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
                      title: 'Descarte de insumos domiciliar', route: '/descarte-de-insumos-domiciliar'),

                      CategoryRowWidget(
                        title: 'Armazenamento, validade e transporte das insulinas', route: '/armazenamento-transporte-validade-insulina')
                        
                          
                    ],
                  )
            ),
            // )
          ],
        )));
  }
}
