import 'package:flutter/material.dart';

class CetoacidoseDiabeticaTratamentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                teste(context,
                    'As metas do tratamento das crises hiperglicêmicas agudas são:'),
                textWithPoint(context,
                    title:
                        'Manutenção das vias respiratórias pérvias e, em caso de vômitos, indicação de sonda nasogástrica;'),
                textWithPoint(context, title: 'Correção da desidratação;'),
                textWithPoint(context,
                    title:
                        'Correção dos distúrbios eletrolíticos e acidobásicos;'),
                textWithPoint(context,
                    title: 'Redução da hiperglicemia e da osmolaridade;'),
                textWithPoint(context,
                    title: 'Identificação e tratamento do fator precipitante.'),
                Divider(),

                title(context, title: 'Insulinoterapia'),
                //  Divider(),
                teste(context,
                    'Para corrigir a hiperglicemia e a acidose metabólica, inicia-se a terapia com insulina.'),
                textWithPoint(context,
                    title:
                        'Nos episódios mais graves de CAD, a via de escolha é a infusão intravenosa contínua de insulina regular, e a dose, em média, de \n0,1 U/kg/h.'),
                textWithPoint(context,
                    title:
                        'Em casos leves ou moderados, pode-se utilizar insulina regular IM, a cada hora, ou análogos ultrarrápidos SC, a cada 1 ou 2 horas.'),
                teste(context,
                    'Um aspecto importante é o uso de baixas doses de insulina, para que, com a correção gradual da glicemia e, portanto, da osmolaridade, pode-se prevenir o edema cerebral clínico, sobretudo em jovens.'),

                textAlingRight(context, text: "ISPAD 2018 / SBD 2019-2020")
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

  Widget title(context, {String title}) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.all(10),
      // width: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Title(
              color: Colors.black,
              child: Text(title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)))
        ],
      ),
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
