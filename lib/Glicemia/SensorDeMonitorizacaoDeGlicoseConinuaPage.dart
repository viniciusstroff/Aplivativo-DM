import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class SensorDeMonitorizacaoDeGlicoseConinuaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title: "Sensor de Monitorização\n de Glicose Contínua",titleSize: 19,),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SimpleTextComponent(text:'O SMCG é formado por aparelhos, minimamente invasivos, que registram e exibem o valor, a direção e a magnitude da alteração dos níveis de glicose intersticial, por meio de um sensor subcutâneo.'),
                // Divider(),
                // Text("\n"),
                imageDetails2(context, 'assets/images/sensor-de-glicose-continuo.png', 'sensor-glicose', '(SBD, 2019-2020)'),
              ],
            ),
          ),
        ],
      ),
    );
  }


Widget imageDetails2(context, String image, [String tagname, String text]) {
  return Center(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height * 0.4),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(title:'Sensor de Glicose Contínuo', text:text, image:image, tag:tagname);
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


}
