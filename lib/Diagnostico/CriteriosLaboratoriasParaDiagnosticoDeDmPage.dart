import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Model/DiagnosticoClass.dart';
import 'package:projeto_diabetes/Model/DiagnosticoDmClass.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/data/data.dart';

class CriteriosLaboratoriasParaDiagnosticoDeDmPage extends StatelessWidget {
  static String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
      // CustomSliverAppBar(title: "Critérios Laboratoriais\n   para Diagnóstico",),
      SliverList(
        delegate: SliverChildListDelegate([
          Container(
            // margin: EdgeInsets.all(1.0),
            child: Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container( margin: EdgeInsets.only(bottom:20), child:  SimpleTextComponent(text: 'Critérios Laboratoriais para DM recomendados pela ADA e pela SBD',) ,),
                     
                      buildDataTable(context),
                      ReferenceTextComponent(text: 'Adaptado das Diretrizes da Sociedade Brasileira de Diabetes(SBD) 2019-2020.\nTOTG: Teste oral de tolerância à glicose.\nSBD: Sociedade Brasileira de Diabetes; ADA: American Diabetes Association',fontSize: 14)

                      
                    ],
                  ),
                ),
              ),
              
            ]),
          ),
          
        ]),
      )
    ]));
  }
}


Widget buildDataTable(context) {
  bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double rowHeight = isPortrait
      ? MediaQuery.of(context).size.height * 0.35 / hipoglicemiaRows.length
      : MediaQuery.of(context).size.height  / hipoglicemiaRows.length;

  double rowWidth = isPortrait
      ? MediaQuery.of(context).size.width * 0.3
      : MediaQuery.of(context).size.width * 0.27;

  double textSize =  isPortrait 
    ? (rowWidth * 15) / 100
    : (rowWidth * 12) / 100;

  return DataTable(
    columnSpacing: 25,
    columns: [
      _getColumn('${diagnosticoDmColumns.exame}', rowWidth,
          textSize: textSize),
      _getColumn('${diagnosticoDmColumns.normal}', rowWidth,
          textSize: textSize),
      _getColumn('${diagnosticoDmColumns.prediabetes}', rowWidth,
          textSize: textSize),
      _getColumn('${diagnosticoDmColumns.diabetes}', rowWidth,
        textSize: textSize),

    ],
    
    
    rows: diagnosticosDm
        .map((DiagnosticoDmClass diagnostico) => _getRows(diagnostico, rowWidth, textSize:textSize))
        .toList(),
        dataRowHeight:rowHeight ,        // headingRowHeight: rowHeight,
    // dataRowHeight: rowHeight * 1.8,
    horizontalMargin: 10,
    // headingRowHeight: rowHeight,
  );
}

DataColumn _getColumn(String title, double width, {double textSize}) {
  return DataColumn(
      
      label: Container(
    // width: width,
    child: Column(
      children: [
        Expanded(
            // width: 350,

            flex: 1,
            child: Text(title,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: textSize,
                ))),
      ],
    ),
  ));
}

DataRow _getRows(
  diagnostico,
  double width,
  {double textSize}
) {
  return DataRow(

    cells: [
      DataCell(
        
        Container(
        width: width+30,
        child: Column(
          children: [
            Expanded(
                child: Text('${diagnostico.exame}',
                    style: TextStyle(
                      fontSize: textSize,
                    ))),
          ],
        ),
      )),
      DataCell(Container(
        width: width,
        child: Column(
          children: [
            Expanded(
                child: Text('${diagnostico.normal}',
                    style: TextStyle(
                      fontSize: textSize,
                    ))),
          ],
        ),
      )),
      DataCell(Container(
        width: width,
        child: Column(
          children: [
            Expanded(
                child: Text('${diagnostico.prediabetes}',
                    style: TextStyle(
                      fontSize: textSize,
                    ))),
          ],
        ),
      )),
      DataCell(Container(
        width: width,
        child: Column(
          children: [
            Expanded(
                child: Text('${diagnostico.diabetes}',
                    style: TextStyle(
                      fontSize: textSize,
                    ))),
          ],
        ),
      )),
      
      // DataCell(Container(
      //    width: 100,
      //   child: Column(
      //     children: [
      //       Expanded(
      //           child: Text('${diagnostico.observacoes}',
      //               style: TextStyle(
      //                 fontSize: 12,
      //               ))),
      //     ],
      //   ),
      // ))
    ],
  );
}

