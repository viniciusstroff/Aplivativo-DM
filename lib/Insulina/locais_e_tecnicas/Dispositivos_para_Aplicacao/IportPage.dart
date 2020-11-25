import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class IportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'i-Port'),
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              // CustomSliverAppBar(title: 'i-Port',),
              SliverList(
                delegate: SliverChildListDelegate(
                  [details(context)],
                ),
              )
            ],
          ),
        ));
  }
}

Widget details(context) {
  return Container(
    // padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        detailsBody(context),
      ],
    ),
  );
}

Widget detailsBody(context) {
  return Container(
      // padding: const EdgeInsets.only(bottom: 5, top: 10, left: 2, right: 2),
      child: Column(
        children: <Widget>[
          SimpleTextComponent(text: 'Dispositivo descartável, pequeno, circular, discreto, que permanece na pele e uma cânula flexível no subcutâneo do usuário. ',),
          SimpleTextComponent(text: 'Aplica-se no tecido subcutâneo através de uma agulha-guia, que orienta uma cânula (tubo pequeno e flexível) sob a pele, que é removida após a inserção. No subcutâneo, fica apenas um tubo flexível.',),
          SimpleTextComponent(text:'Indicado para adultos e crianças que necessitam de múltiplas injeções subcutâneas diárias de medicamentos prescritos por médicos, incluindo insulina. ',),
          SimpleTextComponent(text:'É necessário a troca do dispositivo a cada 72 horas ou 75 aplicações. '),
          SimpleTextComponent(text: 'Utilizar seringas ou canetas: agulhas de 5 a 8mm para aplicar.',),
          SimpleTextComponent(text:'Manter intervalo de 60 minutos entre aplicações basal e bolus.',),
          imageDetails2(context, 'assets/images/ilustracao-iport.jpeg', 'ilustrando-iport'),
          imageDetails2(context, 'assets/images/aplicando-iport.jpeg', 'aplicando-iport', 'www.i-port.com'),
          Divider(height: 100, color: Colors.white,),
          SimpleTitleComponent(text: 'Número de aplicações no tratamento intensivo', textSize: 16,),
          imageDetails2(context, 'assets/images/multiplas-doses-insulina.jpeg', '', '*MDI: Múltiplas doses de insulina'),
        ],
      ));
}

Widget imageDetails2(context, String image, [String tagname, String text]) {
   bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double height = isPortrait
      ? MediaQuery.of(context).size.height /3
      : MediaQuery.of(context).size.height /1.5 ;

  double width = isPortrait
      ? MediaQuery.of(context).size.width * 0.80
      : MediaQuery.of(context).size.width /2;
  return Container(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: width,
                height: height),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(title:'i-Port', text:'', image:image, tag:tagname);
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
