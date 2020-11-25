import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class SistemaFlashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title: "Sistema Flash",),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(text:'O sistema flash, FreeStyle Libre é um tipo de monitorização contínua de glicose de visualização intermitente.'),
                SimpleTextComponent(text:'É um sensor redondo (cerca de 35 mm de diâmetro), que é aplicado na região posterior do braço e um monitor de leitura das informações enviadas pelo sensor com tela sensível ao toque.'),
                SimpleTextComponent(text:'Para a medida da glicemia, e necessário aproximar o monitor ao sensor. Assim o monitor faz o escaneamento do sensor, captando e mostrando no seu visor o valor da glicose, bem como setas e curva de tendência da glicemia do paciente.'),
                SimpleTextComponent(text:'Esses escaneamentos podem ser feitos quantas vezes o indivíduo quiser ao longo do dia.'),
                SimpleTextComponent(text:'O sensor tem duração de 14 dias.'),
                imageDetails2(context, 'assets/images/sistema-flash.jpeg', 'sistema-flash', '(SBD, 2019-2020)'),
              ],
            ),
          ),
        ],
      ),
    );
  }


Widget imageDetails2(context, String image, [String tagname, String text]) {
  return Center(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height * 0.5),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(title:'Exercício', text:text, image:image, tag:tagname);
            }));
          },
        ),
         Text(text != null ? text : '',
            style: TextStyle(
              fontSize: 11,
            ))
      ],
    ),
  );
}


}
