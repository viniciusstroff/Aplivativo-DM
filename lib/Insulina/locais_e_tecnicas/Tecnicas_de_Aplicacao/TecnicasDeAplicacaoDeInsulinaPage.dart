import 'package:flutter/material.dart';

class TecnicasDeAplicacaoDeInsulinaPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: CustomAppBar(title: 'Aplicação da Insulina'),
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              // CustomSliverAppBar(title: "Aplicação da Insulina",),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

