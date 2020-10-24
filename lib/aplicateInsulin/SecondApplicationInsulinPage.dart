import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';

class SecondApplicationInsulinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Dispositivos para aplicação de insulina'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10.0),

            child: Text("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
        
      ),
    );
  }
}