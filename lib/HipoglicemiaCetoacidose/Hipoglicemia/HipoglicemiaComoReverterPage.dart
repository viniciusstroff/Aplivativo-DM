import 'package:flutter/material.dart';

class HipoglicemiaComoReverterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                textWithPoint(context,
                    title:
                        'Recomenda-se consumir de 15 a 20 gramas de carboidratos simples, como açúcar (uma colher de sopa, dissolvida em água), uma colher de sopa de mel (lembrando que mel não é permitido para crianças menores de um ano), refrigerante comum, não diet (um copo de 200 mL), 1 copo de suco de laranja integral, entre outros;'),
                textWithPoint(context,
                    title:
                        'Verificar a glicemia capilar em 10-15 minutos e se a hipoglicemia persistir, repita o procedimento;'),
                textWithPoint(context,
                    title:
                        'Quando glicemia dentro dos limites de normalidade realize uma refeição ou lanche, incluindo uma quantidade adequada de carboidratos.'),
                
                 textAlingRight(context, text: "ISPAD 2017 / ADA 2019"),
                Divider(
                  height: 20,
                ),
               
                teste(context, 'Se paciente sonolento:'),
                textWithPoint(context,
                    title:
                        'Administrar (friccionar) glicose líquida ou mel na região interna das bochechas e na gengiva;'),
                
                teste(context,
                    'Em hipoglicemias graves (paciente inconsciente ou crise convulsiva):'),
                textWithPoint(context,
                    title:
                        'Glucagon (se disponível), subcutâneo ou intramuscular na dose de 1mg para adolescentes e adultos, 0,5mg para crianças;'),
                textWithPoint(context,
                    title:
                        'Glicose endovenosa conforme prescrição ou protocolo da instituição.'),

                textAlingRight(context, text:"Insulinas - Insulinizando o paciente com diabetes - (2019)" )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget teste(context, text) {
    return Container(
      // margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget textWithPoint(context, {String title}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Icon(
                Icons.fiber_manual_record,
                size: 10.0,
              ),
            ),
          ),
          Expanded(
              flex: 15,
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
              ))
        ],
      ),
    );
  }

  Widget textWithSomeWordsBold(BuildContext context,
      {String textBold, String text, String underlinedText, String text2}) {
    TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 13.0);
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
            )),
      ]),
    );
  }

   Widget textAlingRight(context, {String text}){
    return 
      Align( 
      alignment: Alignment.bottomRight,
      child:Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
        // margin: EdgeInsets.all(10),
        // alignment: Alignment.bottomRight,
        child: Text(text,style: TextStyle(fontSize: 14, color:Colors.black))
    ),
      ));

  }
}
