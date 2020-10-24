import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/HiperlinkComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
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
                teste(context,
                    text:
                        'Federação Internacional de Diabetes. Atlas de Diabetes da IDF, 9a edn. Bruxelas, Bélgica: 2019. Disponível em: ',
                    url: 'http://www.diabetesatlas.org',
                    number: 1),
                teste(context,
                    text:
                        'Diretrizes da Sociedade Brasileira de Diabetes - SBD (2019-2020)',
                    number: 2),
                teste(context,
                    text:
                        'Insulinas - Insulinizando o paciente com diabetes - (2019)',
                    number: 3),
                teste(context, text: 'ADA', number: 4),
                teste(context, text: 'ISPAD', number: 5),
                teste(context,
                    url:
                        'https://www.diabetes.org.br/publico/dia-mundial-do-diabetes-2017',
                    number: 6),
                teste(context,
                    text:
                        'ISPAD Clinical Practice Consensus Guidelines 2018: Diabetic ketoacidosis and the hyperglycemic hyperosmolar state',
                    number: 7),
                teste(context,
                    url:
                        'https://www.diabetes.org.br/profissionais/images/Posicionamento_Oficial_Sbd_N012020v6_brLC.pdf',
                    number: 8)
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
