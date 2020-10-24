import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String description;
  final Color color;

  CategoryModel(this.name, this.description, this.color);
}

getCategory(String index) {
  switch (index) {
    case 'sinais-e-sintomas':
      return CategoryModel("O que é o Diabetes?", "Category that contains post related to entertainment and social life", Colors.orange.shade800);
    case 'avaliacao-e-diagnostico':
      return CategoryModel("Avaliação e\n Diagnóstico", "Sports news and latest events", Colors.blue);
    case 'glicemia':
      return CategoryModel("Monitorização\nda Glicemia", "Current and hot news in Techinology department", Colors.blue);
    case 'cetoacidose':
      return CategoryModel("Cetoacidose\nDiabética - CAD", "Current and hot news in Techinology department", Colors.pink.shade300);
    case 'mitos':
      return CategoryModel("Mitos acerca do Diabetes", "Current and hot news in Techinology department", Colors.pink.shade300);
    case 'locais-e-tecnincas-de-aplicacao':
      return CategoryModel("Aplicação \nde Insulina: Locais e Técnica", "Current and hot news in Techinology department", Colors.pink.shade300);
    case 'insulina':
      return CategoryModel("Insulina", "", Colors.purple.shade300);
    case 'hipoglicemia-e-cetoacidose':
      return CategoryModel("Hipoglicemia e Cetoacidose", "", Colors.lime.shade300);
    case 'insumos':
      return CategoryModel("Insumos", "", Colors.red.shade300);
    
  }
}