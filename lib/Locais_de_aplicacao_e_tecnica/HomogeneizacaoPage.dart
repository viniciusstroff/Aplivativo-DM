import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class HomogeineizacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              CustomSliverAppBar(title: "Homogeneização da\n Insulina NPH",),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    details(context)
                  ],
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
        // detailsBody(context),
        SimpleTextComponent(text: 'As suspensões de insulina (proteína neutra Hagedorn [neutral protamine Hagedorn, NPH] e pré-misturas) devem ser homogeneizadas corretamente antes do uso, para que os cristais de insulina entrem em suspensão. '),
          
        SimpleTextComponent(text:'A homogeneização inadequada pode alterar a concentração de insulina, levando a respostas clínicas imprevisíveis.'),
      
        SimpleTextComponent(text: 'Para homogeneizar corretamente as suspensões de insulina, recomendam-se 20 movimentos (rolamentos entre as palmas das mãos, circulares ou em pêndulo) suaves.'),
        
        imageDetails2(context, 'assets/images/homogeneizaao-nph.gif', tagname:'homogeneizacao-nph'),
        imageDetails3(context,'assets/images/homogeneizacao.jpeg'),
      ],
    ),
  );
}

Widget imageDetails2(context, String image, {String tagname, String text}) {
  return Center(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: MediaQuery.of(context).size.width *0.6,
                height: MediaQuery.of(context).size.height * 0.6 ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(image:image, tag:tagname);
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

Widget imageDetails3(context, String image){
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
      GestureDetector(
        child: Hero(
          tag: 'homogeneizacao',
          child: Column(
            children: <Widget>[
              Image.asset(image,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.4),
         
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ImageDetails(title:'Homogeneização', text:"Jehie PM, et al. Lancet, 1999. 354(9190) 1604-7", image:image, tag:'homogeneizacao');
          }));
        },
      ),
      Container(width:  MediaQuery.of(context).size.width * 0.3,
      // color:Colors.red,
        child: Column(
        
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom:7, top: 7),
              child: Text('24h de sedimentação',softWrap: true, style: TextStyle(fontSize: 12),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:7, top: 7),
              child: Text('Após 7 ciclos de homogeneização',softWrap: true, style: TextStyle(fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:7, top: 7),
              child: Text('Após 20 ciclos de homogeneização',softWrap: true, style: TextStyle(fontSize: 12)),
            ),
          ],
        ),)
      
    ],);
}

