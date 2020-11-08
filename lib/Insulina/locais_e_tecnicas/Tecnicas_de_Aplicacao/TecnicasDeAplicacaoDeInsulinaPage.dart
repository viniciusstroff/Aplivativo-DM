import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/ImageDetails.dart';

class TecnicasDeAplicacaoDeInsulinaPage extends StatelessWidget {
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
                    details(context)
                  ],
                ),
              )
            ],
          ),
        ));
  }
  Widget details(context) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        
        imageDetails2(context, 'assets/images/aplicacao-insulina.gif', tagname:'aplicando-insulina'),
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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8 ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails('', '', image, tagname);
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
}

