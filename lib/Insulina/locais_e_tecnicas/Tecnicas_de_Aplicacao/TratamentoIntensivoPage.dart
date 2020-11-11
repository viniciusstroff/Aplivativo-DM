import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/ImageDetails.dart';

class TratamentoIntensivoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
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
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        detailsBody(context),
      ],
    ),
  );
}

Widget detailsBody(context) {  return Container(
      padding: const EdgeInsets.only(bottom: 5, top: 10, left: 2, right: 2),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[

                  imageDetails2(context, 'assets/images/multiplas-doses-insulina.jpeg', '', '*MDI: Múltiplas doses de insulina'),
   
            ],
          )
        ],
      ));
}

Widget imageDetails2(context, String image, [String tagname, String text]) {
   bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double height = isPortrait
      ? MediaQuery.of(context).size.height /2
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
              return ImageDetails('i-Port', '', image, tagname);
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

