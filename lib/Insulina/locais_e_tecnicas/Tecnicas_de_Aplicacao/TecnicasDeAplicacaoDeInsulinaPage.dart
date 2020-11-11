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
   bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double height = isPortrait
      ? MediaQuery.of(context).size.height /2
      : MediaQuery.of(context).size.height ;

  double width = isPortrait
      ? MediaQuery.of(context).size.width 
      : MediaQuery.of(context).size.width ;
  return Center(
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

