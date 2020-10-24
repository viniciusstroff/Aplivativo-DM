import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';
import 'package:photo_view/photo_view.dart';
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
                  
                  imageDetails2(context, 'assets/images/tipos-de-insulina-e-tempo-de-acao2.jpg', tagname:'tipos-de-insulina', title: 'Tipos de Insulina e Tempo de ação', text:'(SBD, 2020)' ),
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
  return Container(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height * 0.5
                ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(title, text, image, tagname);
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