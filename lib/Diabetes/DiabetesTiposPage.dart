import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithPointComponent.dart';

class DiabetesTiposPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title: "Tipos de Diabetes", ),
          SliverList(
            delegate: SliverChildListDelegate(
              [ 
                SimpleTextWithPointComponent(text:'Diabetes Tipo 1', textSize: 20,),
                SimpleTextComponent(text:'Doença autoimune onde o sistema imunológico do corpo ataca as células beta-pancreáticas.\nOcorre uma deficiência completa na produção de insulina, e faz-se necessária a reposição com insulina exógena'),
                // Divider(),
                SimpleTextComponent(text: 'As causas ainda não são completamente conhecidas, mas uma combinação de genética, suscetibilidade e gatilhos ambientais têm sido implicados.'),
                // Divider(),
                SimpleTextComponent(text:'A doença pode se desenvolver em qualquer idade, mas DM1 ocorre com mais frequência em crianças e adolescentes. '),

                Divider(),

                SimpleTextWithPointComponent(text: 'Diabetes Tipo 2', textSize: 20,),
                SimpleTextComponent(text: 'No DM2, hiperglicemia resulta da produção inadequada de insulina e incapacidade do corpo para responder à insulina, definida como resistência insulínica.'),
               
                SimpleTextComponent(text: 'DM2 é mais comumente visto em adultos mais velhos, mas é cada vez mais visto em crianças, adolescentes e adultos mais jovens devido ao aumento dos níveis de obesidade, inatividade física e má alimentação. '),

                Divider(),
                SimpleTextWithPointComponent(text:'Diabetes Gestacional', textSize: 20,),
                SimpleTextComponent(text: 'Ocorre quando há uma intolerância a carboidratos de gravidade oscilante, com início durante a gestação atual, sem critérios prévios do diagnósticos de DM. Pode ser transitório ou persistir após o parto, caracterizando-se como importante fator de risco para desenvolvimento futuro de DM2.'),

                Divider(),
                SimpleTextWithPointComponent(text: 'Outros Tipos de Diabetes', textSize: 20,),
                SimpleTextComponent(text: 'Há outras formas menos comuns de DM. \n Outras causas de DM incluem defeitos genéticos na ação da insulina, resultantes de mutações no gene do receptor de insulina, e doenças do pâncreas exócrino. \nAlém disso, endocrinopatias com aumento de hormônios contrarreguladores da ação da insulina, podem provocar DM.')

                 
              ]
            ),
          ),
        ],
      ),
    );
  }
}

