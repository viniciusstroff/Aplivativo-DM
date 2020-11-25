import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/AplicarInsulinaPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/TecnicasDeAplicacaoDeInsulinaPage.dart';

class TecnicasDeAplicacaoHomePage extends StatefulWidget{
  @override
  _TecnicasDeAplicacaoHomePageState createState() => _TecnicasDeAplicacaoHomePageState();
}


class _TecnicasDeAplicacaoHomePageState extends State<TecnicasDeAplicacaoHomePage> {
  PageController pageController = PageController(initialPage:0 );
  int currentIndex = 0;
  String currentTitle = "";

  List<StatelessWidget>pages = [
    // CanetasPage(),
    // AgulhasPage(),
    AplicarInsulinaPage(),
    TecnicasDeAplicacaoDeInsulinaPage(),
    // HomogeineizacaoPage(),
    // IportPage(),
    // TratamentoIntensivoPage()

  ]; 

  // Map<StatelessWidget, String > pages ={
  //   HipoglicemiaPage(): "Hipoglicemia",
  //   HipoglicemiaTablePage(): "Hipoglicemia",
  //   HipoglicemiaComoReverterPage(): "Hipoglicemia - Como reverter?"
  // };

  List<String> titles = [
    // "Técnica de Aplicação de Insulina\ncom os diferentes dispositivos",
    // "Técnica de Aplicação de Insulina\ncom os diferentes dispositivos",
    "Onde será aplicada a Insulina?",
    "Técnica de Aplicação de Insulina",
    // "Homogeneização da Insulina NPH",
    // "i-Port",
    // "Número de aplicações\nno tratamento intensivo",

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

}
