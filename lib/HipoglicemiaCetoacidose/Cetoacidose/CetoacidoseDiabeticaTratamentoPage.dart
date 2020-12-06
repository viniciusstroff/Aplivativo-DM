import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithPointComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';

class CetoacidoseDiabeticaTratamentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            title: "Cetoacidose Diabética CAD - Tratamento" ,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTitleComponent(text: 'As metas do tratamento das crises hiperglicêmicas agudas são:'),

                SimpleTextWithPointComponent(text: 'Manutenção das vias respiratórias pérvias e, em caso de vômitos, indicação de sonda nasogástrica;'),
                SimpleTextWithPointComponent(text: 'Correção da desidratação;' ),
                SimpleTextWithPointComponent(text: 'Correção dos distúrbios eletrolíticos e acidobásicos;' ),
                SimpleTextWithPointComponent(text: 'Redução da hiperglicemia e da osmolaridade;'),
                SimpleTextComponent(text:'Identificação e tratamento do fator precipitante.' ),
                Divider(),
                SimpleTitleComponent(text:  'Insulinoterapia'),

                SimpleTextComponent(text:'Para corrigir a hiperglicemia e a acidose metabólica, inicia-se a terapia com insulina.'),
                SimpleTextWithPointComponent(
                    text:
                        'Nos episódios mais graves de CAD, a via de escolha é a infusão intravenosa contínua de insulina regular, e a dose, em média, de \n0,1 U/kg/h.'),
                SimpleTextWithPointComponent(text:'Em casos leves ou moderados, pode-se utilizar insulina regular IM, a cada hora, ou análogos ultrarrápidos SC, a cada 1 ou 2 horas.'),
                SimpleTextComponent(text:
                    'Um aspecto importante é o uso de baixas doses de insulina, para que, com a correção gradual da glicemia e, portanto, da osmolaridade, pode-se prevenir o edema cerebral clínico, sobretudo em jovens.'),

                ReferenceTextComponent(text: "ISPAD 2018 / SBD 2019-2020")
              ],
            ),
          ),
        ],
      ),
    );
  }

}
