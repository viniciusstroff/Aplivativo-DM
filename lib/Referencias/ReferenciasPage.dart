import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/SimpleTextWithLinkComponent.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferenciasPage extends StatelessWidget {
  int number2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // CustomSliverAppBar(title: "14 de Novembro - Dia Mundial do Diabetes",),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextWithLinkComponent(text: 'Federação Internacional de Diabetes. Atlas de Diabetes da IDF, 9a edn. Bruxelas, Bélgica: 2019. Disponível em: ', url: 'http://www.diabetesatlas.org', number: 1,),
                SimpleTextWithLinkComponent(text: 'Diabetes SB. Diretrizes da Sociedade Brasileira de Diabetes 2019-2020. São Paulo: Clannad; 2019. Available from:', url: 'https://www.diabetes.org.br/profissionais/images/DIRETRIZES-COMPLETA-2019-2020.pdf.', number: 2,),
                SimpleTextWithLinkComponent(text: 'Insulinizando o paciente com diabetes: um enfoque interdisplinar da teoria à prática clínica / [organizadores Balduino Tschiedel, Marcia Puñales]. São Paulo: Editora Clannad, 2019.',  number: 3,),
                SimpleTextWithLinkComponent(text: 'American Diabetes Association. Glycemic Targets: Standarts of Medical Care in Diabetes-2019. Diabetes Care. 2019;42 (Sippl 1):S61-S70.', number: 4,),
                SimpleTextWithLinkComponent(text: 'ISPAD - Pocketbook for Management of Diabetes in Childhood and Adolescence in Under-Resourced Countries 2nd Edition. 2017.', number: 5,),
                SimpleTextWithLinkComponent(url: 'https://www.diabetes.org.br/publico/dia-mundial-do-diabetes-2017', number: 6,),
                SimpleTextWithLinkComponent(text: 'ISPAD Clinical Practice Consensus Guidelines 2018: Diabetic ketoacidosis and the hyperglycemic hyperosmolar state', number: 7,),
                SimpleTextWithLinkComponent(url: 'https://www.diabetes.org.br/profissionais/images/Posicionamento_Oficial_Sbd_N012020v6_brLC.pdf', number: 8,),
              
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget teste(context, {String text, String url, int number}) {
    this.number2 = this.number2 + 1;
    final TextSpan textSpan = text != null
        ? TextSpan(
            text: '$number2. $text',
            style: TextStyle(color: Colors.black, fontSize: 16),
          )
        : TextSpan(
            text: '$number2.',
            style: TextStyle(color: Colors.black, fontSize: 16),
          );

    return Container(
      margin: EdgeInsets.all(10),
      child: RichText(
        // softWrap: true,
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            textSpan,
            TextSpan(
              text: url,
              style: new TextStyle(color: Colors.blue, fontSize: 15, ),
              recognizer: new TapGestureRecognizer()
                ..onTap = () {
                  _launchURL(url);
                },
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Unable to open URL $url');
  }
}
