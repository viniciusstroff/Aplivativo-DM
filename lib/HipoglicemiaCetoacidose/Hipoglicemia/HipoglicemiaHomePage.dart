import 'package:flutter/material.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglecemiaPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaComoReverterPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaTablePage.dart';

class HipoglicemiaHomePage extends StatefulWidget {
  @override
  _HipoglicemiaHomePageState createState() => _HipoglicemiaHomePageState();
}

class _HipoglicemiaHomePageState extends State<HipoglicemiaHomePage> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  String currentTitle = "";

  List<StatelessWidget> pages = [
    HipoglicemiaPage(),
    HipoglicemiaTablePage(),
    HipoglicemiaComoReverterPage()
  ];

  // Map<StatelessWidget, String > pages ={
  //   HipoglicemiaPage(): "Hipoglicemia",
  //   HipoglicemiaTablePage(): "Hipoglicemia",
  //   HipoglicemiaComoReverterPage(): "Hipoglicemia - Como reverter?"
  // };

  List<String> titles = [
    "Hipoglicemia",
    "Hipoglicemia",
    "Hipoglicemia \n Como reverter?"
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
    IconButton nextPage = currentIndex < 2
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
          title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              titles[currentIndex],
              maxLines: 3,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          actions: [nextPage],
        ),
        body: PageView(
          controller: pageController,
          children: <Widget>[...pages],
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }

}
