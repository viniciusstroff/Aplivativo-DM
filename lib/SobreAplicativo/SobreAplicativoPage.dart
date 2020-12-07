import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/EmaillinkComponent.dart';
import 'package:projeto_diabetes/components/HiperlinkComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';
import 'package:url_launcher/url_launcher.dart';

class SobreAplicativo extends StatefulWidget {
  @override
  _SobreAplicativoState createState() => _SobreAplicativoState();
}

class _SobreAplicativoState extends State<SobreAplicativo> {
 
  GlobalKey<FormState> _key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      CustomSliverAppBar(
        title: "Sobre o Aplicativo",
        titleSize: 20,
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          SimpleTextComponent(text:'Este aplicativo foi desenvolvido como produto da dissertação de mestrado do Programa de Pós-graduação em Ensino na Saúde da Universidade Federal de Ciências da Saúde de Porto Alegre, da aluna enfermeira Carolina Piccoli, sob orientação da Profa. Dra Simone Travi Canabarro.'),
          EmaillinkComponent(text: 'Para contato enviar email para:',email: 'suporte.dicabetes@gmail.com',)
        ]),
      )
    ]));
  }

}


