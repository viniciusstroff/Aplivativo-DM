import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:url_launcher/url_launcher.dart';

class FaleConoscoPage extends StatefulWidget {
  @override
  _FaleConoscoPageState createState() => _FaleConoscoPageState();
}

class _FaleConoscoPageState extends State<FaleConoscoPage> {
 
  GlobalKey<FormState> _key = new GlobalKey();
  String nome, assunto;
  // final myController = TextEditingController();

  // @override
  // void dispose() {
  //   myController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      CustomSliverAppBar(
        title: "Fale Conosco",
        titleSize: 20,
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          Form(
            key: _key,
            child: _formUI(),
          ),
        ]),
      )
    ]));
  }

  Widget _formUI() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new TextFormField(
            decoration: new InputDecoration(hintText: 'Nome e Sobrenome'),
            maxLength: 40,
            validator: _validarNome,
            onSaved: (String val) {
              nome = val;
            },
          ),
          new TextFormField(
              decoration: new InputDecoration(hintText: 'Assunto'),
              maxLength: 50,
              onSaved: (String val) {
                assunto = val;
              }),
          new SizedBox(height: 100.0),
          new RaisedButton(
            
            onPressed: _enviarFormulario,
            child: new Text('Enviar Email'),
          )
        ],
      ),
    );
  }

   _enviarFormulario() {
   
      if (_key.currentState.validate()) {
        _key.currentState.save();
        _enviarEmail();
      } 
  }

  _enviarEmail() async{
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'suporte.dicabetes@gmail.com',
      queryParameters: {
        'subject': '$assunto',
        'body': 'De $nome'
      }
    );

    if( await canLaunch(_emailLaunchUri.toString())){
      await launch(_emailLaunchUri.toString());
    }else{
      throw 'Problemas ao enviar email';
    }
  }
  
 String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }  
}


