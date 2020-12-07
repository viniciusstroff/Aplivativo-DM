import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithPointComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class GlicemiaCapilarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    double height = isPortrait
        ? MediaQuery.of(context).size.height
        : MediaQuery.of(context).size.height;

    double width = isPortrait
        ? MediaQuery.of(context).size.width * 0.3
        : MediaQuery.of(context).size.width * 0.27;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            title: "Glicemia Capilar",
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(
                    text:
                        'A automonitorização da glicemia capilar (AMGC) é efetuada com a inserção de uma gota de sangue capilar em uma fita descartável acoplada a um dispositivo, o glicosímetro.'),
                imageDetails2(context, image:'assets/images/aplicacao-glicemia.gif', tagname:'glicemia-aplicacao', height: height/2),
                // Image.asset("assets/images/exercicio.gif"),
                // FadeInImage.memoryNetwork(placeholder: 'assets/images/exercicio.gif', image: 'assets/images/exercicio.gif',),
                SimpleTextComponent(
                    text:
                        'Para pacientes em tratamento intensivo, com múltiplas injeções de insulina ou sistema de infusão contínua, a AMGC deve ser feita no mínimo quatro vezes ao dia, geralmente antes e depois das refeições e ao deitar.'),
                SimpleTextComponent(
                    text: 'Auto-monitoramento doméstico de glicose:'),
                SimpleTextWithPointComponent(
                  text:
                      'rastreia níveis imediatos e diários de controle da glicose;',
                  textSize: 16,
                ),
                SimpleTextWithPointComponent(
                    text:
                        'ajuda a determinar insulina basal e bolus imediata e contínua requisitos;'),
                SimpleTextWithPointComponent(
                    text: 'detecta hipoglicemia e auxilia no seu manejo;'),
                SimpleTextWithPointComponent(
                    text: 'auxilia no tratamento adequado da hiperglicemia; e'),
                SimpleTextWithPointComponent(
                    text:
                        'ajuda a orientar os ajustes de insulina para diminuir as flutuações da glicose.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Widget imageDetails2(context, {String image, String tagname, String text, double height, double width}) {
  return Center(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: width ,
                height: height),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(title:text, text:text, image:image, tag:tagname);
            }));
          },
        ),
         Text(text != null ? text : '',
            style: TextStyle(
              fontSize: 16,
            ))
      ],
    ),
  );
}