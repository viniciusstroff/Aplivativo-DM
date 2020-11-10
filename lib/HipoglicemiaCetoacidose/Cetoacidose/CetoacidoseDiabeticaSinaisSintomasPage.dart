import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithPointComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';

class CetoacidoseDiabeticaSinaisSintomasPage extends StatelessWidget {
  final String text;
  CetoacidoseDiabeticaSinaisSintomasPage({Key key, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTitleComponent(text:'Os sinais clínicos da CAD são: ' , textSize: 18,),
                SimpleTextWithPointComponent(
                    text: 'Poliúria, polidipsia, perda de peso;'),
                SimpleTextWithPointComponent(text: 'Desidratação;'),
                SimpleTextWithPointComponent(text: 'Respiração de Kussmaul;'),
                SimpleTextWithPointComponent(text: 'Cheiros de acetona;'),
                SimpleTextWithPointComponent(
                    text: 'Náusea e / ou vômitos, dor abdominal;'),
                SimpleTextWithPointComponent(text: 'Visão embaçada;'),
                SimpleTextWithPointComponent(text: 'Confusão;'),
                SimpleTextWithPointComponent(
                    text:
                        'Diminuição progressiva do nível de consciência e, eventualmente, perda de consciência (coma).'),
                SimpleTextComponent(
                    text:
                        'Os profissionais de saúde devem estar atentos à esses sintomas para oferecer o tratamento adequado ao paciente o mais rápido possível, minimizando as complicações decorrentes do quadro.'),
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
