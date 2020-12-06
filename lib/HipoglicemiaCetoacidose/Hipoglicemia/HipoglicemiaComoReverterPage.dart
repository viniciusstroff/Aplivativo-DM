import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithPointComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';

class HipoglicemiaComoReverterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            title: "Hipoglicemia como reverter?",
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [

                SimpleTextWithPointComponent(text: 'Recomenda-se consumir de 15 a 20 gramas de carboidratos simples, como açúcar (uma colher de sopa, dissolvida em água), uma colher de sopa de mel (lembrando que mel não é permitido para crianças menores de um ano), refrigerante comum, não diet (um copo de 200 mL), 1 copo de suco de laranja integral, entre outros;',),
                SimpleTextWithPointComponent(text: 'Verificar a glicemia capilar em 10-15 minutos e se a hipoglicemia persistir, repita o procedimento;'),
                SimpleTextWithPointComponent(text: 'Quando glicemia dentro dos limites de normalidade realize uma refeição ou lanche, incluindo uma quantidade adequada de carboidratos.'),
                ReferenceTextComponent(text:"ISPAD 2017 / ADA 2019"),
                Divider(
                  height: 20,
                ),
                SimpleTitleComponent(text: 'Se paciente sonolento:', textSize: 16,),
                SimpleTextWithPointComponent(text: 'Administrar (friccionar) glicose líquida ou mel na região interna das bochechas e na gengiva;'),
                SimpleTitleComponent(text: 'Em hipoglicemias graves (paciente inconsciente ou crise convulsiva):', textSize: 16),
                SimpleTextWithPointComponent(text: 'Glucagon (se disponível), subcutâneo ou intramuscular na dose de 1mg para adolescentes e adultos, 0,5mg para crianças;',),
                SimpleTextWithPointComponent(text: 'Glicose endovenosa conforme prescrição ou protocolo da instituição.'),
                ReferenceTextComponent(text: "Insulinas - Insulinizando o paciente com diabetes - (2019)" ,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
