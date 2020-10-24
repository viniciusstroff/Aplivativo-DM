import 'package:flutter/material.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaComoReverterPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaTablePage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/AgulhasPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/AplicarInsulinaPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/CanetasPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/HomogeneizacaoPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/IportPage.dart';
import 'package:projeto_diabetes/Insulina/LocaisDeAplicacaoDeInsulina/LocaisAplicacaoPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/TecnicasDeAplicacaoDeInsulinaPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/TratamentoIntensivoPage.dart';



class TecnicasDeAplicacaoHomePage extends StatefulWidget{
  @override
  _TecnicasDeAplicacaoHomePageState createState() => _TecnicasDeAplicacaoHomePageState();
}


class _TecnicasDeAplicacaoHomePageState extends State<TecnicasDeAplicacaoHomePage> {
  PageController pageController = PageController(initialPage:0 );
  int currentIndex = 0;
  String currentTitle = "";

  List<StatelessWidget>pages = [
    CanetasPage(),
    AgulhasPage(),
    AplicarInsulinaPage(),
    TecnicasDeAplicacaoDeInsulinaPage(),
    HomogeineizacaoPage(),
    IportPage(),
    TratamentoIntensivoPage()

  ]; 

  // Map<StatelessWidget, String > pages ={
  //   HipoglicemiaPage(): "Hipoglicemia",
  //   HipoglicemiaTablePage(): "Hipoglicemia",
  //   HipoglicemiaComoReverterPage(): "Hipoglicemia - Como reverter?"
  // };

  List<String> titles = [
    "Técnica de Aplicação de Insulina\ncom os diferentes dispositivos",
    "Técnica de Aplicação de Insulina\ncom os diferentes dispositivos",
    "Onde será aplicada a Insulina?",
    "Técnica de Aplicação de Insulina",
    "Homogeneização da Insulina NPH",
    "i-Port",
    "Número de aplicações\nno tratamento intensivo",

  ];

  @override
  Widget build(BuildContext context) {
    IconButton previousPage = currentIndex > 0  
      ? IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
        pageController.previousPage(duration: Duration(milliseconds: 250), curve: Curves.linear);
        })
      : null;
    IconButton nextPage = currentIndex < pages.length -1 
      ? IconButton(icon:Icon(Icons.arrow_forward), onPressed: (){
          pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.linear);
        })
      : IconButton(icon: Icon(null), onPressed: (){},);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: previousPage,
        centerTitle: true,
         title: FittedBox(fit:BoxFit.fitWidth, 
          child:  Text(
            titles[currentIndex],
            maxLines: 3,
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          ),
        actions: [
        nextPage
        ],
      ),
     
      body:PageView(
        controller: pageController,
        children: <Widget>[
          ...pages
        ],
        onPageChanged: (index){
          setState(() {
              currentIndex = index;
          });
        },

        
      )
      
                
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
            style: TextStyle(fontSize: 13),
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
            child: 
          Title(color: Colors.black, child: Text(title))
          )
          
        ],
      ),
    );
  }

Widget textWithSomeWordsBold(BuildContext context, {String textBold, String text, String underlinedText, String text2 }) {
    TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 13.0);
    String hasText2 = (text2 != null) ? text2 :  "";
    FontWeight boldStyle = FontWeight.bold;
 
    return Container(
      padding: EdgeInsets.only(top:20),
      child: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                style: defaultStyle,
                children: <TextSpan>[
                  TextSpan(text: text),
                  TextSpan(text: textBold, style: TextStyle(fontWeight: boldStyle)),
                  TextSpan(text: hasText2)
                ],
              ),
            )
        ),
      ]
      ),
    );
  }


}
