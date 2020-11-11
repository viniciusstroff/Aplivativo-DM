import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class AplicarInsulinaPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: CustomAppBar(title: 'Aplicação da Insulina'),
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              // CustomSliverAppBar(title: "Aplicação da Insulina",),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    details(context),
                    imageDetails2(context,'assets/images/injecao_insulina.jpeg', 'injecao-insulina'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget imageDetails2(context, String image, [String tagname, String text]) {
   bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double height = isPortrait
      ? MediaQuery.of(context).size.height / 2
      : MediaQuery.of(context).size.height /2;

  double width = isPortrait
      ? MediaQuery.of(context).size.width /1.2
      : MediaQuery.of(context).size.width /1;
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
              return ImageDetails(tagname, '', image, tagname);
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

Widget details(context) {
  return Container(
    child: Column(
      children: <Widget>[
        SimpleTextComponent(text:'A via usual para aplicação de insulina é a subcutânea (SC).'),
        SimpleTextComponent(text:'A extensa rede de capilares possibilita a absorção gradativa da insulina e garante o perfil farmacocinético descrito pelo fabricante.')
      ],
    ),
  );
}



