import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';

class TratamentoIntensivoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Número de Aplicações no tratamento intensivo'),
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

Widget detailsBody(context) {
  return Container(
      padding: const EdgeInsets.only(bottom: 5, top: 10, left: 2, right: 2),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[

                  imageDetails(context, 'assets/images/multiplas-doses-insulina.jpeg', '*MDI: Múltiplas doses de insulina'),
   
            ],
          )
        ],
      ));
}

Widget imageDetails(context, String image, [String text]) {

  return Container(
    padding: const EdgeInsets.only(bottom:20.0, top: 20.0, left: 5.0, right: 5.0),
    
    child: Column(
      children: <Widget>[
        Image.asset(image, width: 320,),
        Align(
          alignment: Alignment.centerRight,
          child: Text(text !=null ? text : '', style: TextStyle( fontSize: 10,)),
        )
      ],
    ),
  );
}

