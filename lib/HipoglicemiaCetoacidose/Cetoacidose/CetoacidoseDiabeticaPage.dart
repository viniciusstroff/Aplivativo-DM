import 'package:flutter/material.dart';

class CetoacidoseDiabeticaPage extends StatelessWidget {
  final String text;
  CetoacidoseDiabeticaPage({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [ 
                teste(context, 'A cetoacidose diabética (CAD) é uma complicação grave que pode ocorrer durante a evolução do diabetes mellitus tipos 1 e 2 (DM1 e DM2). '),
                teste(context, 'Está presente em cerca de 25% dos casos no momento do diagnóstico do DM1 e é a causa mais comum de morte entre crianças e adolescentes com DM1.'),
                // teste(context, 'Esses escaneamentos podem ser feitos quantas vezes o indivíduo quiser ao longo do dia.'),
                // teste(context, 'A hipoglicemia de nível 3 é definida como um evento grave, caracterizado por alterações no funcionamento mental e / ou físico que requerem assistência de outra pessoa para recuperação.'),
        

                Divider(),
                teste(context, 'Os critérios bioquímicos para o diagnóstico de cetoacidose diabética são:'),
                textWithPoint(context,  title:'Glicemia sanguínea > 200 mg/dL, em casos raros, a glicemia pode ser < 200 mg/dL;'),
                textWithPoint(context, title:'pH de sangue venoso < 7,3 ou bicarbonato sérico < 15 mmol/L, além de cetonemia e cetonúria.'),
                Divider(),
                teste(context, 'A CAD é definida como grave quando evolui com pH de sangue venoso < 7, moderada entre 7 e 7,24 e leve entre 7,25 e 7,3.'),
                textAlingRight(context,text:"ISPAD 2018 / SBD 2019-2020"),
                
                
              ],
            ),
          ),
        ],
        
      ),
    );
  }

  Widget teste(context, text) {
    return Container(
      // color: Colors.green,
      child: Column(children: <Widget>[
        Container(
          // margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(10),
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ]),
    );
  }

  Widget textWithPoint(context, {String title}) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.all(10),
      // width: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Icon(
            Icons.fiber_manual_record,
            size: 10.0,
          ),
          ),
          Expanded(
            flex: 15,
            child: 
          Title(color: Colors.black, child: Text(title, style: TextStyle(fontSize: 16)))
          )
          
        ],
      ),
    );
  }

Widget textWithSomeWordsBold(BuildContext context, {String textBold, String text, String underlinedText, String text2 }) {
    TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 16.0);
    String hasText2 = (text2 != null) ? text2 :  "";
    FontWeight boldStyle = FontWeight.bold;
 
    return Container(
      color: Colors.green,
      padding: EdgeInsets.only(top:20),
      child: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                style: defaultStyle,
                children: <TextSpan>[
                  TextSpan(text: text),
                  TextSpan(text: textBold, style: TextStyle(fontWeight: boldStyle)),
                  TextSpan(text: hasText2)
                ],
              ),
            )
        ),
      ]
      ),
    );
  }

Widget textAlingRight(context, {String text}){
    return 
      Align( 
      alignment: Alignment.bottomRight,
      child:Padding(
        padding: const EdgeInsets.only(bottom:10.0),
        child: Container(
        // margin: EdgeInsets.all(10),
        // alignment: Alignment.bottomRight,
        child: Text(text,style: TextStyle(fontSize: 14, color:Colors.black))
    ),
      ));

  }


}
