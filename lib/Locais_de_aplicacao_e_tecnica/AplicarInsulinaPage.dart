import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
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
              CustomSliverAppBar(title: "Aplicação da Insulina",),
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
Widget imageDetails(context, String image) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        Image.asset(image)
      ],
    ),
  );
}

Widget imageDetails2(context, String image, [String tagname, String text]) {
  return Container(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.30),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails('i-Port', '', image, tagname);
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



