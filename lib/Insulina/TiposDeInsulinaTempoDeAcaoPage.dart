import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';
// import 'package:flutter/services.dart';


// Future main() async {
//     await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
//     runApp(new CronologiaDaInsulinaPage());
//   }
  
class TiposDeInsulinaTempoDeAcaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppBar(title: "Tipos de Insulina\n e tempo de ação",),
            
            SliverList(
              delegate: SliverChildListDelegate(
                [ 
                  
                  imageDetails2(context, 'assets/images/tipos-de-insulina-e-tempo-de-acao.PNG', tagname:'tipos-de-insulina', title: 'Tipos de Insulina e Tempo de ação', text:'(SBD, 2020)' ),
                  ReferenceTextComponent(text: 'Adaptado de: McMahon GT et al. Intention to treat - Initiating insulin and the 4-T Study. N Engl J Med 2007; 357 (17):1759-61.',),
                  Divider(),
                  imageDetails2(context, 'assets/images/propriedades-farmaceuticas-das-insulinas-e-analogos.jpg', tagname:'propriedades-farmaceuticas-das-insulinas-e-analogos', text:'Adaptado de CONDUTA TERAPÊUTICA NO\n DIABETES TIPO 1: ALGORITMO SBD 2020' ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget imageDetails2(context, String image, {String tagname, String text, String title}) {
  bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double height = isPortrait
      ? MediaQuery.of(context).size.height /3
      : MediaQuery.of(context).size.height ;

  double width = isPortrait
      ? MediaQuery.of(context).size.width 
      : MediaQuery.of(context).size.width / 1.5;

  return Container(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: width, //MediaQuery.of(context).size.width ,
                height: height, //MediaQuery.of(context).size.height * 0.5
                ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(title:title, text:text, image:image, tag:tagname, width: width, height: height,);
            }));
          },
        ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Text(text != null ? text : '',
              style: TextStyle(
                fontSize: 14,
              )),
         )
      ],
    ),
  );
}