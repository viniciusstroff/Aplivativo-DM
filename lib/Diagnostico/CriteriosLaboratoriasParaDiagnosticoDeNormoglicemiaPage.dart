import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Model/DiagnosticoClass.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/data/data.dart';

class CriteriosLaboratoriasParaDiagnosticoDeNormoglicemiaPage extends StatelessWidget {
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
                      Container( margin: EdgeInsets.all(10), child:  SimpleTextComponent(text: 'Critérios Laboratoriais para diagnóstico para normoglicemia, pré-diabetes e DM, adotados pela SBD',) ,),
                     
                      buildDataTable(context),
                      ReferenceTextComponent(text: 'Adaptado das Diretrizes da Sociedade Brasileira de Diabetes(SBD) 2019-2020\nOMS: Organização Mundial da Saúde: HA1c: hemoglobina glicada; DM; Diabetes melitius\n *Categoria também conhecida como glicemia de jejum alterada.\n*Categoria também conhecida como intolerância oral à glicose.',fontSize: 14)

                      
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
      ? MediaQuery.of(context).size.height * 0.5 / hipoglicemiaRows.length
      : MediaQuery.of(context).size.height  / hipoglicemiaRows.length;

  double rowWidth = isPortrait
      ? MediaQuery.of(context).size.width * 0.28
      : MediaQuery.of(context).size.width * 0.27;

  double textSize =  isPortrait 
    ? (rowWidth * 14) / 100
    : (rowWidth * 12) / 100;

  return DataTable(
    columnSpacing: 35,
    columns: [
      _getColumn('${diagnosticoColumns.nada}', rowWidth, textSize: textSize),
      _getColumn('${diagnosticoColumns.glicoseEmJejum}', rowWidth,
          textSize: textSize),
      _getColumn('${diagnosticoColumns.glicose2h}', rowWidth,
          textSize: textSize),
      _getColumn('${diagnosticoColumns.glicoseAoAcaso}', rowWidth,
          textSize: textSize),
      _getColumn('${diagnosticoColumns.hba1c}', rowWidth, textSize: textSize),
      // _getColumn('${diagnosticoColumns.observacoes}', rowWidth,
      //     textSize: textSize),

    ],
    
    
    rows: diagnosticos
        .map((DiagnosticoClass diagnostico) => _getRows(diagnostico, rowWidth, textSize:textSize))
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
        width: width,
        child: Column(
          children: [
            Expanded(
                child: Text('${diagnostico.nada}',
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
                child: Text('${diagnostico.glicoseEmJejum}',
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
                child: Text('${diagnostico.glicose2h}',
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
                child: Text('${diagnostico.glicoseAoAcaso}',
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
                child: Text('${diagnostico.hba1c}',
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

