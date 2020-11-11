import 'package:flutter/material.dart';
import 'package:projeto_diabetes/curiosidades/DiaMundialDiabetesPage.dart';
import 'package:projeto_diabetes/curiosidades/EpidemiologiaPage.dart';


class CuriositiesHomePage extends StatefulWidget{
  @override
  _CuriositiesHomePageState createState() => _CuriositiesHomePageState();
}


class _CuriositiesHomePageState extends State<CuriositiesHomePage> {
  PageController pageController = PageController(initialPage:0 );
  int currentIndex = 0;
  String currentTitle = "";

  List<StatelessWidget>pages = [
    EpidemiologiaPage(),
    DiaMundialDiabetesPage(),
    
  ]; 
  
  List<String> titles = [
    "Epidemiologia e impacto\nglobal do diabetes mellitus",
    "14 de Novembro - Dia \nMundial do Diabetes"
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
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
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