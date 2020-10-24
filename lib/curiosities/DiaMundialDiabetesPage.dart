import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/HiperlinkComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';

class DiaMundialDiabetesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // CustomSliverAppBar(title: "14 de Novembro - Dia Mundial do Diabetes",),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(text:'O Dia Mundial do Diabetes foi criado em 1991 pela IDF em conjunto com a OMS (Organização Mundial da Saúde), em resposta às preocupações sobre os crescentes números de diagnósticos no mundo.'),
                SimpleTextComponent(text:'A data tornou-se oficial pela ONU (Organização das Nações Unidas) a partir de 2007, com a aprovação da Resolução das Nações Unidas 61/225. O dia 14 de novembro foi escolhido por marcar o aniversário de Frederick Banting que, junto com Charles Best, concebeu a ideia que levou à descoberta da insulina em 1921.'),
                SimpleTextComponent(text:'O símbolo global do Dia Mundial do Diabetes é o círculo azul. O círculo simboliza a vida e a saúde, e o azul reflete o céu que une todas as nações. A junção do círculo com a cor azul significa a unidade da comunidade global em resposta à epidemia do diabetes e funciona como um estímulo para a união da luta de controle da doença em todas as nações.'),
                Center(child: HiperlinkComponent(url:'https://www.sbp.com.br/imprensa/detalhe/nid/dia-mundial-do-diabetes/')),
                Divider(color: Colors.white, height: 20,),
                Center(child: HiperlinkComponent(url: 'https://www.diabetes.org.br/publico/dia-mundial-do-diabetes-2017',)),
                Divider(color: Colors.white, height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }


}