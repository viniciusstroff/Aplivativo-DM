import 'package:flutter/material.dart';

class CetoacidoseDiabeticaSinaisSintomasPage extends StatelessWidget {
  final String text;
  CetoacidoseDiabeticaSinaisSintomasPage({Key key, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                teste(context, 'Os sinais clínicos da CAD são: '),
                textWithPoint(context,
                    title: 'Poliúria, polidipsia, perda de peso;'),
                textWithPoint(context, title: 'Desidratação;'),
                textWithPoint(context, title: 'Respiração de Kussmaul;'),
                textWithPoint(context, title: 'Cheiros de acetona;'),
                textWithPoint(context,
                    title: 'Náusea e / ou vômitos, dor abdominal;'),
                textWithPoint(context, title: 'Visão embaçada;'),
                textWithPoint(context, title: 'Confusão;'),
                textWithPoint(context,
                    title:
                        'Diminuição progressiva do nível de consciência e, eventualmente, perda de consciência (coma).'),
                //  Divider(),
                teste(context,
                    'Os profissionais de saúde devem estar atentos à esses sintomas para oferecer o tratamento adequado ao paciente o mais rápido possível, minimizando as complicações decorrentes do quadro.'),
                textAlingRight(context, text: "ISPAD 2018 / SBD 2019-2020"),
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
            textAlign: TextAlign.justify,
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
              child: Title(
                  color: Colors.black,
                  child: Text(title,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify)))
        ],
      ),
    );
  }

  Widget textWithSomeWordsBold(BuildContext context,
      {String textBold, String text, String underlinedText, String text2}) {
    TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 16.0);
    String hasText2 = (text2 != null) ? text2 : "";
    FontWeight boldStyle = FontWeight.bold;

    return Container(
      // color: Colors.green,
      padding: EdgeInsets.only(top: 20),
      child: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                style: defaultStyle,
                children: <TextSpan>[
                  TextSpan(text: text),
                  TextSpan(
                      text: textBold, style: TextStyle(fontWeight: boldStyle)),
                  TextSpan(text: hasText2)
                ],
              ),
            )),
      ]),
    );
  }

  Widget textAlingRight(context, {String text}) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
              // margin: EdgeInsets.all(10),
              // alignment: Alignment.bottomRight,
              child: Text(text,
                  style: TextStyle(fontSize: 14, color: Colors.black))),
        ));
  }
}
