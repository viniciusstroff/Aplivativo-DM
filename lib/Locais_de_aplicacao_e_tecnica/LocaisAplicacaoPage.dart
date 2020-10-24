import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';

import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';


class LocaisAplicacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: CustomAppBar(title: 'Locais de Aplicação'),
        body: Container(
          // margin: EdgeInsets.only(left: 5, right: 5, top: 10),

          // color: Colors.red,
          child: CustomScrollView(
            slivers: <Widget>[
              CustomSliverAppBar(title: 'Locais de Aplicação',),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SimpleTextComponent(text:'Os locais recomendados para aplicação de insulina são aqueles afastados de articulações, ossos, grandes vasos sanguíneos e nervos, e de fácil acesso para possibilitar a autoaplicação. São eles:'),
                    // teste2(context, 'assets/images/locais-de-aplicacao.jpeg'),
                    detailsBody(context),
                    Divider(),
                    warningMessage(context,
                        'Atenção: considerar dedos de quem está recebendo a insulina.')
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget teste2(context, String image) {
  final String text =
      ' \n•Braços: face posterior, três a quatro dedos abaixo da axila e acima do cotovelo (considerar os dedos do indivíduo que receberá a injeção de insulina);\n' +
          '\n•Glúteos: quadrante superior lateral externo;\n' +
          '\n•Coxas: face anterior e lateral externa superior, quatro dedos abaixo da virilha e acima do joelho;\n' +
          '\n•Abdome: regiões laterais direita e esquerda, com distância de três a quatro dedos da cicatriz umbilical.\n';
  return DropCapText(
    text,
    dropCapPosition: DropCapPosition.end,
    textAlign: TextAlign.justify,
    dropCap: DropCap(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.width * 0.6,
      child: Image.asset(image),
    ),
  );
}

Widget detailsBody(context) {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            // color: Colors.green,
            margin: EdgeInsets.only(right: 1),
            width: MediaQuery.of(context).size.width * 0.56,
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    // padding: EdgeInsets.all(10),
                    child: Text(
                      String.fromCharCode(0x2022) +
                          'Braços: face posterior, três a quatro dedos abaixo da axila e acima do cotovelo (considerar os dedos do indivíduo que receberá a injeção de insulina);',
                      style: TextStyle(fontSize: 16),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      String.fromCharCode(0x2022) +
                          'Glúteos: quadrante superior lateral externo;',
                      style: TextStyle(fontSize: 16),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      String.fromCharCode(0x2022) +
                          'Coxas: face anterior e lateral externa superior, quatro dedos abaixo da virilha e acima do joelho;',
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
          ),
          imageDetails2(
            context,
            'assets/images/locais-de-aplicacao.jpeg',
            '(SBD, 2019-2020)',
          ),
        ],
      ),
      Container(
          // margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(10),
          child: Text(
            '•Abdome: regiões laterais direita e esquerda, com distância de três a quatro dedos da cicatriz umbilical.',
            style: TextStyle(fontSize: 16),
          )),
    ],
  );
}

Widget imageDetails(context, String image, [String text]) {
  return Column(
    children: <Widget>[
      Image.asset(image,
          width: MediaQuery.of(context).size.width * 0.603,
          height: MediaQuery.of(context).size.height * 0.33),
      Text(text != null ? text : '',
          style: TextStyle(
            fontSize: 14,
          ))
    ],
  );
}

Widget imageDetails2(context, String image, [String text]) {
  return Column(
    children: <Widget>[
      GestureDetector(
        child: Hero(
          tag: 'locais-de-aplicacao',
          child: Column(
            children: <Widget>[
              Image.asset(image,
                  width: MediaQuery.of(context).size.width * 0.403,
                  height: MediaQuery.of(context).size.height * 0.30),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ImageDetails('Locais de Aplicação', text, image, 'locais-de-aplicacao');
          }));
        },
      ),
       Text(text != null ? text : '',
          style: TextStyle(
            fontSize: 16,
          ))
    ],
  );
}

Widget warningMessage(context, String text) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Container(
      // margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      child: Column(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
