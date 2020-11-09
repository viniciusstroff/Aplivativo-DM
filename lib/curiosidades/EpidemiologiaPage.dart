import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/HiperlinkComponent.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';

class EpidemiologiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // CustomSliverAppBar(title: "14 de Novembro - Dia Mundial do Diabetes",),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(text:'Independentemente do grau de desenvolvimento dos países, o diabetes mellitus (DM) é um importante e crescente problema de saúde.'),
                SimpleTextComponent(text:'Em 2019, estima-se que 463 milhões de pessoas tenham diabetes e esse número está projetado para chegar a 578 milhões até 2030 e 700 milhões até 2045.'),
                ReferenceTextComponent(text: ' (IDF, 2019).',  fontSize: 16,),
                Divider(height: 120,),
                SimpleTextComponent(text:'O Brasil é o 3º colocado no ranking mundial em incidência e prevalência de diabetes tipo 1 em crianças e adolescentes de 0-14 anos de idade por ano.'),
                ReferenceTextComponent(text: ' (IDF, 2019).',  fontSize: 16,),
              ],
            ),
          ),
        ],
      ),
    );
  }


}