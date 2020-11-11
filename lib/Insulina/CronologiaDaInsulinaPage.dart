import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';
// import 'package:flutter/services.dart';


// Future main() async {
//     await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
//     runApp(new CronologiaDaInsulinaPage());
//   }
  
class CronologiaDaInsulinaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppBar(title: "Cronologia da Insulina",),
            
            SliverList(
              delegate: SliverChildListDelegate(
                [ 
                  
                  imageDetails2(context, 'assets/images/cronologia-insulina.jpg', tagname:'cronologia-insulina', title: 'Cronologia da Insulina'),
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
  double rowHeight = isPortrait
      ? MediaQuery.of(context).size.height /2
      : MediaQuery.of(context).size.height / 1.5;

  double rowWidth = isPortrait
      ? MediaQuery.of(context).size.width
      : MediaQuery.of(context).size.width;

  return Container(
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      //   mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: rowWidth, // MediaQuery.of(context).size.width *2 ,
                height: rowHeight, //MediaQuery.of(context).size.height *0.3 
                ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(title, '', image, tagname);
            }));
          },
        ),
         Text(text != null ? text : '',
            style: TextStyle(
              fontSize: 14,
            ))
      ],
    ),
  );
}