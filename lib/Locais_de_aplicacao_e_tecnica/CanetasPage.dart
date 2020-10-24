import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';

class CanetasPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: CustomAppBar(title: 'Técnicas de Aplicação'),
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              CustomSliverAppBar(title: "Técnicas de Aplicação",),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    details(context, 'Canetas'),
                    imageDetails(context, 'Canetas permanentes ou reutilizáveis', 'assets/images/canetas_permanentes.jpeg'),
                    imageDetails(context, 'Canetas descartáveis', 'assets/images/canetas_descartaveis.jpeg'),
                    imageDetails(context, '', 'assets/images/agulhas.jpeg')
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget imageDetails(context, String title, String image) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        Text(title),
        Image.asset(image)
      ],
    ),
  );
}

Widget details(context, String title) {
  return Container(
    // padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        detailsHeader(context, title),
        // detailsBody(context),
        SimpleTextComponent(text:'Existem canetas recarregáveis e descartáveis. '),

        SimpleTextComponent(text:'As canetas recarregáveis são para uso com insulina U100, com refil de 3 mL. A caneta recarregável e o refil de insulina devem ser do mesmo fabricante, para garantir encaixe perfeito, registro e injeção da dose corretos.'),

        SimpleTextComponent(text:'Nas canetas, podem-se registrar doses pares e ímpares, e ainda, registrar doses de 1/2 em 1/2 UI de insulina. '),

        SimpleTextComponent(text:'Em 2019, o Sistema Único de Saúde (SUS) iniciou a dispensação de caneta de insulina descartável, uma grande conquista para o tratamento com insulina no Brasil.'),
      ],
    ),
  );
}

Widget detailsHeader(context, String title) {
  return Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Title(color: Colors.black, child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
      )
    ],
  ));
}
