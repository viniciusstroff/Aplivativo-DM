import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaSinaisSintomasPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaTratamentoPage.dart';

class CetoacidoseDiabeticaHomePage extends StatefulWidget {
  @override
  _CetoacidoseDiabeticaHomePageState createState() =>
      _CetoacidoseDiabeticaHomePageState();
}

class _CetoacidoseDiabeticaHomePageState
    extends State<CetoacidoseDiabeticaHomePage> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  String currentTitle = "";

  // Map pages ={
  //   CetoacidoseDiabeticaPage(text: "",): "Cetoacidose Diabética - CAD",
  //   CetoacidoseDiabeticaSinaisSintomasPage(text: "",): "Cetoacidose Diabética - CAD - Sinais e Sintomas",
  //   CetoacidoseDiabeticaTratamentoPage(): "Cetoacidose Diabética - CAD - Tratamento"
  // };
  List pages = [
    CetoacidoseDiabeticaPage(
        text: ""),
    CetoacidoseDiabeticaSinaisSintomasPage(text: ""),
    CetoacidoseDiabeticaTratamentoPage()
  ];
  List<String> titles = [
    "Cetoacidose Diabética CAD",
    "Cetoacidose Diabética CAD \n        Sinais e Sintomas",
    "Cetoacidose Diabética CAD \n            Tratamento"
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

Widget textAlingRight(context, {String text}){
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.bottomRight,
      child: Text(text,style: TextStyle(fontSize: 16, color:Colors.black))
    );

  }
