import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithSomeWordsBoldComponent.dart';

class ArmazenamentoTransporteValidadeInsulinaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title: "Armazenamento, validade\ne transporte de insulina ", titleSize: 20,),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(text:'As insulinas apresentam boa estabilidade e têm ação preservada, se, devidamente conservadas, segundo as recomendações do fabricante. '),
                SimpleTextComponent(text:'Uma forma de acompanhar a validade é anotando a data inicial de uso da insulina. Lembrando que sempre deve-se verificar o aspecto da insulina antes de sua utilização.'),
                SimpleTextWithSomeWordsBoldComponent(
                    textBold: 'Frascos, refis e canetas descartáveis lacrados:',
                    text:' manter sob refrigeração entre 2° a 8°C (gaveta da geladeira).'),
                SimpleTextWithSomeWordsBoldComponent(
                  textBold:'Frascos e refis em uso: ',
                  underlinedText: 'podem',
                  text:' ser mantidos em temperatura ambiente até 30ºC, protegidos do calor e luz direta ou sob refrigeração.',
                  
                ),
                SimpleTextWithSomeWordsBoldComponent(
                  textBold:'Canetas descartáveis em uso: ',
                  underlinedText:'devem',
                  text:' ser mantidos em temperatura ambiente até 30ºC, protegidos do calor e luz direta ou sob refrigeração.',
                  
                ),
                SimpleTextWithSomeWordsBoldComponent(
                  textBold:'Frascos, refis e canetas descartáveis lacrados: ',
                  text:' validade varia de 2 a 3 anos a partir da data de fabricação ',
                  underlinedText:'se',
                  text2: ' armazenados sob refrigeração (2º a 8ºC). '
                ),
                SimpleTextWithSomeWordsBoldComponent(
                  textBold:'Frascos, refis e canetas descartáveis em uso: ',
                  text:'validade de até 28 dias após abertos, exceto insulinas: Toujeo/Glargina 300U/ml - 6 semanas (42dias) e Degludeca/Tresiba - 8 semanas (56 dias).'
                ),
                ReferenceTextComponent(text:'(SBD 2019-2020)'),
                // textAlingRight(context)

              ],
            ),
          ),
        ],
      ),
    );
  }




}
