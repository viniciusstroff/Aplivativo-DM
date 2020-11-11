import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Diabetes/DiabetesHomePage.dart';
import 'package:projeto_diabetes/Diabetes/DiabetesSinaisSintomasPage.dart';
import 'package:projeto_diabetes/Diabetes/DiabetesSobrePage.dart';
import 'package:projeto_diabetes/Diabetes/DiabetesTiposPage.dart';
import 'package:projeto_diabetes/Diagnostico/AvaliacaoDiagnosticoHomePage.dart';
import 'package:projeto_diabetes/Diagnostico/CriteriosLaboratoriasParaDiagnosticoDeDmPage.dart';
import 'package:projeto_diabetes/Diagnostico/CriteriosLaboratoriasParaDiagnosticoDeNormoglicemiaPage.dart';
import 'package:projeto_diabetes/FaleConosco/FaleConoscoPage.dart';
import 'package:projeto_diabetes/Glicemia/AutomonitoracaoPage.dart';
import 'package:projeto_diabetes/Glicemia/GlicemiaCapilarPage.dart';
import 'package:projeto_diabetes/Glicemia/GlicemiaHomePage.dart';
import 'package:projeto_diabetes/Glicemia/SensorDeMonitorizacaoDeGlicoseConinuaPage.dart';
import 'package:projeto_diabetes/Glicemia/SistemaFlashPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaHomePage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaSinaisSintomasPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Cetoacidose/CetoacidoseDiabeticaTratamentoPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglecemiaPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaComoReverterPage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/HipoglicemiaCetoacidoseHomePage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaHomePage.dart';
import 'package:projeto_diabetes/HipoglicemiaCetoacidose/Hipoglicemia/HipoglicemiaTablePage.dart';
import 'package:projeto_diabetes/Insulina/TiposDeInsulinaTempoDeAcaoPage.dart';
import 'package:projeto_diabetes/Insulina/InsulinaHomePage.dart';
import 'package:projeto_diabetes/Insulina/AdventoDaInsulinaPage.dart';
import 'package:projeto_diabetes/Insulina/CronologiaDaInsulinaPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/AplicandoInsulinaHomePage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Dispositivos_para_Aplicacao/DispositivosParaAplicacaoInsulinaPage.dart';
import 'package:projeto_diabetes/Insulina/LocaisDeAplicacaoDeInsulina/LocaisAplicacaoPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/TecnicasDeAplicacaoDeInsulinaPage.dart';
import 'package:projeto_diabetes/Insulina/locais_e_tecnicas/Tecnicas_de_Aplicacao/TecnicasDeAplicacaoHomePage.dart';
import 'package:projeto_diabetes/Insumos/DescarteDeInsumosDomiciliarPage.dart';
import 'package:projeto_diabetes/Insumos/InsumosHomePage.dart';
import 'package:projeto_diabetes/Locais_de_aplicacao_e_tecnica/AgulhasPage.dart';
import 'package:projeto_diabetes/Locais_de_aplicacao_e_tecnica/AplicarInsulinaPage.dart';
import 'package:projeto_diabetes/Insumos/ArmazenamentoTransporteValidadeInsulinaPage.dart';
import 'package:projeto_diabetes/Locais_de_aplicacao_e_tecnica/CanetasPage.dart';
import 'package:projeto_diabetes/Locais_de_aplicacao_e_tecnica/HomePage2.dart';
import 'package:projeto_diabetes/Locais_de_aplicacao_e_tecnica/HomogeneizacaoPage.dart';
import 'package:projeto_diabetes/Locais_de_aplicacao_e_tecnica/IportPage.dart';
import 'package:projeto_diabetes/Locais_de_aplicacao_e_tecnica/TratamentoIntensivoPage.dart';
import 'package:projeto_diabetes/Referencias/ReferenciasHomePage.dart';
import 'package:projeto_diabetes/Referencias/ReferenciasPage.dart';
import 'package:projeto_diabetes/SobreDesenvolvimento/SobreDesenvolvimentoPage.dart';
import 'package:projeto_diabetes/curiosidades/CuriositiesHomePage.dart';
import 'package:projeto_diabetes/curiosidades/DiaMundialDiabetesPage.dart';
import 'package:projeto_diabetes/curiosidades/EpidemiologiaPage.dart';

import 'HomeDashboard.dart';

const Color cPrimary = Color(0xFF039BE5);
const Color cPrimaryLight = Color(0xFFFFFFF3);
const Color cAccentColor = Color(0xFFF4C0FF);
const Color cTextBlack = Color(0xFF000000);

ThemeData get appThemeData => ThemeData(
  primaryColor: cPrimary,
  primaryColorLight: cPrimaryLight,
  accentColor: cAccentColor,
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      home: HomeDashboard(),
      initialRoute: '/',
      routes: {

        //CURIOSIDADES
        '/curiosidades-homepage':(context) => CuriositiesHomePage(),
        '/dia-mundial-do-diabetes-page':(context) => DiaMundialDiabetesPage(),
        '/epidemiologia-dm': (context)  => EpidemiologiaPage(),

        //REFERENCIAS
        '/referencias-homepage': (context) => ReferenciasHomePage(),
        '/referencias-page': (context) => ReferenciasPage(),
        
        //DIABETES
        '/diabetes-homepage': (context) => DiabetesHomePage(),
        '/diabetes-o-que-e': (context) => DiabetesSobrePage(),
        '/diabetes-sinais-e-sintomas': (context) => DiabetesSinaisSintomasPage(),
        '/diabetes-tipos-de-diabetes': (context) => DiabetesTiposPage(),


        //INSULINA
        '/insulina-homepage': (context) => InsulinaHomePage(),
        '/insulina-advento': (context) => AdventoDaInsulinaPage(),
        '/insulina-cronologia': (context) => CronologiaDaInsulinaPage(),
        '/insulina-tipos-tempo-de-acao': (context) => TiposDeInsulinaTempoDeAcaoPage(),

        //APLICAÇÃO DE INSULINA LOCAIS E TECNICAS
        '/aplicando-insulina-homepage': (context) => AplicandoInsulinaHomePage(),
        '/dispositivos-para-aplicacao': (context) => DispositivosParaAplicacaoInsulinaPage(),
        '/tecnica-de-aplicacao-de-insulina-com-diferentes-dispositivos': (context) => TecnicasDeAplicacaoHomePage(),
        '/tecnicas-de-aplicacao-de-insulina': (context) => TecnicasDeAplicacaoDeInsulinaPage(),
        
        //LOCAIS DE APLICAÇÂO

        '/homePage': (context) => HomePage2(),
        '/canetas': (context) => CanetasPage(),
        '/agulhas': (context) => AgulhasPage(),
        '/aplicarInsulina': (context) => AplicarInsulinaPage(),
        '/nph': (context) => HomogeineizacaoPage(),
        '/iport': (context) => IportPage(),
        '/tratamento-intensivo-aplicacoes': (context) => TratamentoIntensivoPage(),
        '/locais-de-aplicacao': (context) => LocaisAplicacaoPage(),
        '/descarte-insumos-domiciliar': (context) => DescarteDeInsumosDocimiciliarPage(),
        '/armazenamento-transporte-validade-insulina': (context) => ArmazenamentoTransporteValidadeInsulinaPage(),



        //AVALIAÇÃO E DIAGNÓSTICO
        '/avaliacao-e-diagnostico-homepage': (context) => AvaliacaoDiagnosticoHomePage(),
        '/criterios-laboratoriais-para-diagnostico-de-normoglicemia-page':(context) => CriteriosLaboratoriasParaDiagnosticoDeNormoglicemiaPage(),
        '/criterios-laboratoriais-para-diagnostico-de-dm-page': (context) =>CriteriosLaboratoriasParaDiagnosticoDeDmPage(),

        //GLICEMIA
        '/glicemia-homepage': (context) =>GlicemiaHomePage(),
        '/glicemia-automonitoracao': (context) => AutomonitoracaoPage(),
        '/glicemia-capilar': (context) => GlicemiaCapilarPage(),
        '/glicemia-sistema-flash': (context) => SistemaFlashPage(),
        '/glicemia-sensor-de-monitorizacao-de-glicose-continua': (context) => SensorDeMonitorizacaoDeGlicoseConinuaPage(),





        //HIPOGLICEMIA
        '/hipoglicemia-e-cetoacidose-homepage': (context) => HipoglicemiaCetoacidoseHomePage(),
        '/hipoglicemia-homepage': (context) => HipoglicemiaHomePage(),
        '/hipoglicemia' : (context) => HipoglicemiaPage(),
        '/hipoglicemia-table' : (context) => HipoglicemiaTablePage(),
        '/hipoglicemia-como-reverter' : (context) => HipoglicemiaComoReverterPage(),

        //CETOACIDOSE-DIABETICA
        '/glicemia-cetoacidose-diabetica-homepage' : (context) => CetoacidoseDiabeticaHomePage(),
        '/glicemia-cetoacidose-diabetica' : (context) => CetoacidoseDiabeticaPage(text: 'a',),
        '/glicemia-cetoacidose-diabetica-sinais-e-sintomas' : (context) => CetoacidoseDiabeticaSinaisSintomasPage(text: "",),
        '/glicemia-cetoacidose-diabetica-tratamento' : (context) => CetoacidoseDiabeticaTratamentoPage(),



        //INSUMOS
        '/insumos-homepage': (context) => InsumosHomePage(),
        '/descarte-de-insumos-domiciliar': (context) => DescarteDeInsumosDocimiciliarPage(),

        //FALE CONOSCO
        '/fale-conosco': (context) => FaleConoscoPage(),

        //SOBRE DESENVOLVIMENTO
        '/sobre-desenvolvimento': (context) => SobreDesenvolvimento()

      },
    );
  }
}
