import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';

class SobreDesenvolvimento extends StatefulWidget {
  @override
  _SobreDesenvolvimentoState createState() => _SobreDesenvolvimentoState();
}

class _SobreDesenvolvimentoState extends State<SobreDesenvolvimento> {
 
  GlobalKey<FormState> _key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      CustomSliverAppBar(
        title: "Sobre o Desenvolvimento",
        titleSize: 20,
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          
        ]),
      )
    ]));
  }
}


