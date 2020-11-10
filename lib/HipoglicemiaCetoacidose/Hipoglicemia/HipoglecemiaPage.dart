import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithLastWordsBoldComponent.dart';

class HipoglicemiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextWithLastWordsBoldComponent(text: 'A hipoglicemia é o principal fator limitante no manejo glicêmico do diabetes tipo 1 e tipo 2. ', textBold: 'Caracteriza-se como glicemia <70mg/dL. ',),
                SimpleTextComponent(text: 'A hipoglicemia de nível 1 é definida como uma concentração mensurável de glicose, 70 mg / dL (3,9 mmol / L), mas > 54 mg / dL (3,0 mmol / L). '),
                SimpleTextComponent(text: 'A hipoglicemia de nível 2 (definida como uma concentração de glicose no sangue, 54 mg / dL [3,0 mmol / L]) é o limiar no qual os sintomas neuroglicopênicos começam a ocorrer e requer ação imediata para resolver o evento hipoglicêmico. '),
                SimpleTextComponent(text: 'Esses escaneamentos podem ser feitos quantas vezes o indivíduo quiser ao longo do dia.'),
                SimpleTextComponent(text:'A hipoglicemia de nível 3 é definida como um evento grave, caracterizado por alterações no funcionamento mental e / ou físico que requerem assistência de outra pessoa para recuperação.'),
                ReferenceTextComponent(text: "ISPAD 2017 / ADA 2019")
              ],
            ),
          ),
        ],
      ),
    );
  }
}