
import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Diagnostico/CriteriosLaboratoriasParaDiagnosticoDeDmPage.dart';
import 'package:projeto_diabetes/Diagnostico/CriteriosLaboratoriasParaDiagnosticoDeNormoglicemiaPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaSinaisSintomasPage.dart';

class AvaliacaoDiagnosticoHomePage extends StatefulWidget {
  @override
  _AvaliacaoDiagnosticoHomePageState createState() =>
      _AvaliacaoDiagnosticoHomePageState();
}

class _AvaliacaoDiagnosticoHomePageState extends State<AvaliacaoDiagnosticoHomePage> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  String currentTitle = "";

  List pages = [
    CriteriosLaboratoriasParaDiagnosticoDeNormoglicemiaPage(),
    CriteriosLaboratoriasParaDiagnosticoDeDmPage()
  ];
  List<String> titles = [
    "Critérios Laboratorias\n      para Diagnóstico",
    "Critérios Laboratorias\n      para Diagnóstico"
  ];

  @override
  Widget build(BuildContext context) {
    IconButton previousPage = currentIndex > 0
        ? IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              pageController.previousPage(
                  duration: Duration(milliseconds: 250), curve: Curves.linear);
            })
        : null;
    IconButton nextPage = currentIndex < pages.length - 1
        ? IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              pageController.nextPage(
                  duration: Duration(milliseconds: 250), curve: Curves.linear);
            })
        : IconButton(
            icon: Icon(null),
            onPressed: () {},
          );

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: previousPage,
          centerTitle: true,
          title: 
          FittedBox(fit:BoxFit.fitWidth, 
          child:  Text(
            titles[currentIndex],
            maxLines: 3,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          ),
          
         
          actions: [nextPage],
        ),
        body: PageView(
          controller: pageController,
          children: <Widget>[
            ...pages,
            ],
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
              // currentTitle = titles[index];
            });
          },
        ));
  }
}

