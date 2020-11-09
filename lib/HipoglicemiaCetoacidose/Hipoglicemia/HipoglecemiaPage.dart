import 'package:flutter/material.dart';

class HipoglicemiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                textWithSomeWordsBold(context,
                    text:
                        'A hipoglicemia é o principal fator limitante no manejo glicêmico do diabetes tipo 1 e tipo 2. ',
                    textBold: 'Caracteriza-se como glicemia <70mg/dL. '),
                teste(context,
                    'A hipoglicemia de nível 1 é definida como uma concentração mensurável de glicose, 70 mg / dL (3,9 mmol / L), mas > 54 mg / dL (3,0 mmol / L). '),
                teste(context,
                    'A hipoglicemia de nível 2 (definida como uma concentração de glicose no sangue, 54 mg / dL [3,0 mmol / L]) é o limiar no qual os sintomas neuroglicopênicos começam a ocorrer e requer ação imediata para resolver o evento hipoglicêmico. '),
                teste(context,
                    'Esses escaneamentos podem ser feitos quantas vezes o indivíduo quiser ao longo do dia.'),
                teste(context,
                    'A hipoglicemia de nível 3 é definida como um evento grave, caracterizado por alterações no funcionamento mental e / ou físico que requerem assistência de outra pessoa para recuperação.'),
                textAlingRight(context, text: "ISPAD 2017 / ADA 2019")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget teste(context, text) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          // margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(10),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16, color: Colors.black, letterSpacing: 0.5),
            textAlign: TextAlign.justify,
          ),
        ),
      ]),
    );
  }

  Widget textWithPoint(context, {String title}) {
    return Container(
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
    TextStyle defaultStyle =
        TextStyle(color: Colors.black, fontSize: 16.0, letterSpacing: 0.5);
    String hasText2 = (text2 != null) ? text2 : "";
    FontWeight boldStyle = FontWeight.bold;

    return Container(
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
              textAlign: TextAlign.justify,
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
