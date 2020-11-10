import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithPointComponent.dart';

class CetoacidoseDiabeticaPage extends StatelessWidget {
  final String text;
  CetoacidoseDiabeticaPage({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(
                    text:
                        'A cetoacidose diabética (CAD) é uma complicação grave que pode ocorrer durante a evolução do diabetes mellitus tipos 1 e 2 (DM1 e DM2). '),
                SimpleTextComponent(
                    text:
                        'Está presente em cerca de 25% dos casos no momento do diagnóstico do DM1 e é a causa mais comum de morte entre crianças e adolescentes com DM1.'),
                Divider(),
                SimpleTextComponent(
                    text:
                        'Os critérios bioquímicos para o diagnóstico de cetoacidose diabética são:'),
                SimpleTextWithPointComponent(
                    text:
                        'Glicemia sanguínea > 200 mg/dL, em casos raros, a glicemia pode ser < 200 mg/dL;'),
                SimpleTextWithPointComponent(
                  text:
                      'pH de sangue venoso < 7,3 ou bicarbonato sérico < 15 mmol/L, além de cetonemia e cetonúria.',
                ),
                Divider(),
                SimpleTextComponent(
                  text:
                      'A CAD é definida como grave quando evolui com pH de sangue venoso < 7, moderada entre 7 e 7,24 e leve entre 7,25 e 7,3.',
                ),
                ReferenceTextComponent(
                  text: "ISPAD 2018 / SBD 2019-2020",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
