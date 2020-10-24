import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';

class DiabetesSinaisSintomasPage extends StatelessWidget {
  
  final List<String> sintomas = [
    'Cansaço;',
    'Sede Excessiva;',
    'Poliúria - em crianças menores, é comum a micção na cama;',
    'Perda de peso;'
    'Fome excessiva;',
    'Visão embaçada;',
    'Mudança de humor;',
    'Infecções de pele;',
    'Dor abdominal;'
  ];
  final List<String> grave = [
    'Vômitos frequentes e dor abdominal aguda;',
    'Cheiro de acetona na respiração;',
    'Desidratação;',
    'Diminuição do nível de consciência;',
    'Respiração Kussmaul (profunda, rápida, suspirando);',
    'Coma;'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title: "Sinais e Sintomas\n do Diabetes",),
          SliverList(
            delegate: SliverChildListDelegate(
              [ 
                detailsBody(context, sintomas),
                // details(context, '', sintomas),
                // details(context, 'Menos Comuns', lessComum),
                Divider(),
                details(context, 'Grave (Cetoacidose diabética)', grave)
              ]
            ),
          ),
        ],
      ),
    );
  }
}

Widget details(context, String title, List moreComum) {
  return Container(
    // padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        
        detailsHeader(context, title),
        detailsBody(context, moreComum),
      ],
    ),
  );
}

Widget detailsHeader(context, String title) {
  return Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(
        Icons.fiber_manual_record,
        size: 14.0,
      ),
      Title(color: Colors.black, child: Text(title ,style:TextStyle(fontSize: 18)))
    ],
  ));
}

Widget detailsBody(context, List<String> strings) {
  return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:strings.map((item) => 
        Padding(
          padding: const EdgeInsets.only(top:10),
          child: Text(item, style:TextStyle(fontSize: 16)),
        )).toList()
      )
  );
}
