import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';

class AutomonitoracaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title: "Automonitoração",),
         
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(text:
                    'A monitorização glicêmica diária traz inúmeros benefícios às pessoas com DM1, tais como diminuir riscos de complicações agudas (cetoacidose e hipoglicemia), e ainda, proporcionar a compreensão dos determinantes de sua glicemia, correlacionando com atividade física e a ingestão de alimentos. '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
