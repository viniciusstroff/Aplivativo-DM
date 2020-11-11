import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/ImageDetails.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithLastWordsBoldComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextWithSomeWordsBoldComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';

class DispositivosParaAplicacaoInsulinaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            title: 'Dispositivos para\naplicação de insulina',
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTitleComponent(text: 'Seringas'),
                SimpleTextComponent(
                  text:
                      'Apesar dos avanços tecnológicos referentes aos dispositivos para aplicar insulina, a seringa ainda é o dispositivo mais utilizado no Brasil.',
                ),
                SimpleTextComponent(
                    text:
                        'O tipo de insulina e a dose prescrita devem atender às necessidades de cada paciente. '),
                SimpleTextComponent(
                  text:
                      'É comum a prescrição de doses pequenas e ímpares, para crianças e adolescentes. ',
                ),
                SimpleTextComponent(
                  text:
                      'Nesses casos, as opções são seringas de 50 e 30 unidades, que registram, com precisão, doses ímpares. ',
                ),
                SimpleTextWithLastWordsBoldComponent(text:'A seringa recomendada para o preparo seguro da insulina é a com ', textBold: 'agulha fixa'),

                SimpleTextComponent(text:'Seringas com agulhas removíveis possuem espaço residual, no qual pode reter até 10UI de insulina por aplicação, havendo desperdício.'),

                SimpleTextWithSomeWordsBoldComponent(textBold: 'Essas seringas não podem ser utilizadas para associar dois tipos de insulina, ocorreria grave erro de dosagem.',),

                SimpleTextComponent(text: 'Além disso, a agulha é de 13 mm de comprimento, e tem risco elevado de atingir o músculo e causar hipoglicemia. ',),
                imageDetails2(context, image:'assets/images/seringas-espaco-residual.PNG', tagname:'seringas-espaco-residual', text: '(SBD, 2019-2020)'),

                Divider(height: 100, color: Colors.white,),
                
                imageDetails2(context, image:'assets/images/tipos-de-seringas.PNG', tagname: 'tipos-de-seringas', text: '(SBD, 2019-2020)', height: 0.5),
                Divider(height: 20, color: Colors.white,),
                SimpleTextComponent(text:'As seringas com agulha fixa apresentam-se em: 100UI, (escala graduada de 2 em 2UI), 50UI, (escala graduada de 1 em 1UI), e 30UI (escala graduada de 1 em 1UI e de 1/2 em 1/2UI).'),
                SimpleTextComponent(text:'As melhores opções são aquelas com escala de graduação de 1 em 1UI e agulha com 6 mm de comprimento, que registram com precisão doses pares e ímpares e previnem aplicação no músculo.')
              ],
            ),
          )
        ],
      ),
    ));
  }
}

Widget imageDetails2(context, {String image, String tagname, String text, double height = 0.5}) {
  bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double height = isPortrait
      ? MediaQuery.of(context).size.height /2
      : MediaQuery.of(context).size.height ;

  double width = isPortrait
      ? MediaQuery.of(context).size.width 
      : MediaQuery.of(context).size.width;

  return Center(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: width, //MediaQuery.of(context).size.width ,
                height: height),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(text, text, image, tagname);
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