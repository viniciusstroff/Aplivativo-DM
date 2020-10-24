import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';

class DiabetesSobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title:  "O que é Diabetes?",),
          SliverList(
            delegate: SliverChildListDelegate(
              [ 
                SimpleTextComponent(text: 'O Diabetes Mellitus (DM) é uma doença crônica que ocorre quando o pâncreas não é mais capaz de produzir insulina, ou quando o corpo não consegue fazer bom uso da insulina que produz. '),
                SimpleTextComponent(text: 'A insulina é um hormônio que age como uma chave para permitir que a glicose dos alimentos que ingerimos passe da corrente sanguínea para as células do corpo, produzindo energia'),
                SimpleTextComponent(text:'Todos os alimentos com carboidratos são divididos em glicose no sangue. Não ser capaz de produzir insulina ou usá-la efetivamente eleva os níveis de glicose no sangue (conhecido como hiperglicemia).'),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
