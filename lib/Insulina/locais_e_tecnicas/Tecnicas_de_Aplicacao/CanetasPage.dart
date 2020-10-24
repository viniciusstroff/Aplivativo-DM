import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/ImageDetails.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';

class CanetasPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: CustomAppBar(title: 'Técnicas de Aplicação'),
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              // CustomSliverAppBar(title: "Técnicas de Aplicação",),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SimpleTitleComponent(text: 'Canetas' , textSize: 18,),
                    SimpleTextComponent(text:'Existem canetas recarregáveis e descartáveis.'),

                    SimpleTextComponent(text:'As canetas recarregáveis são para uso com insulina U100, com refil de 3 mL. A caneta recarregável e o refil de insulina devem ser do mesmo fabricante, para garantir encaixe perfeito, registro e injeção da dose corretos.'),

                    SimpleTextComponent(text:'Nas canetas, podem-se registrar doses pares e ímpares, e ainda, registrar doses de 1/2 em 1/2 UI de insulina. '),

                    SimpleTextComponent(text:'Em 2019, o Sistema Único de Saúde (SUS) iniciou a dispensação de caneta de insulina descartável, uma grande conquista para o tratamento com insulina no Brasil.'),

                    imageDetails2(context, text:'Canetas permanentes ou reutilizáveis', image:'assets/images/canetas_permanentes.jpeg', tagname: 'canetas-permanentes'),
                    imageDetails2(context, text:'Canetas descartáveis', image:'assets/images/canetas_descartaveis.jpeg', tagname: 'canetas-descartaveis'),
                    imageDetails2(context, text:'', image:'assets/images/agulhas.jpeg', tagname:'agulhas')
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget imageDetails2(context, {String image, String tagname, String text, double height = 0.5}) {
  return Center(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height * height),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(text, text, image, tagname);
            }));
          },
        ),
         Text(text != null ? text : '',
            style: TextStyle(
              fontSize: 18,
            ))
      ],
    ),
  );
}
