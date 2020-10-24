import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryRowWidget.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';

class FirstApplicationInsulinPage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Aplicando Insulina'),
        body: ListView(
          // scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CategoryRowWidget(
                          title: 'Dispositivos para aplicação de insulina',
                          route: '/insulinApplicationSecond'),
                      CategoryRowWidget(
                          title:
                              'Técnica de aplicação de insulina com os diferentes dispositivos',
                          route: '/insulinApplicationThrid'),
                      CategoryRowWidget(
                          title: 'Tipos de Insulina e tempo de ação',
                          route: '/insulinApplicationFour'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
