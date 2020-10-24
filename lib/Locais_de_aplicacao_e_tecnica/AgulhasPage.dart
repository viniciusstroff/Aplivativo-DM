import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/Model/agulha.dart';
import 'package:projeto_diabetes/data/data.dart';

class AgulhasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Técnicas de Aplicação'),
        body: Container(
          margin: EdgeInsets.all(1.0),
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: buildDataTable(),
              ),
            ),
          ]),
        ));
  }
}

Widget buildDataTable() => DataTable(
      columnSpacing: 5,
      columns: [
          _getColumn('${agulhaColumns.comprimento}',35),
          _getColumn('${agulhaColumns.indicacao}', 50),
          _getColumn('${agulhaColumns.pregaSubcutanea}',60),
          _getColumn('${agulhaColumns.angulo}', 90),
          _getColumn('${agulhaColumns.observacoes}', 130),
        ],
      rows: agulhaRows.map(
        (Agulha agulha) => _getRows(agulha)
      ).toList()
    );

DataColumn _getColumn(String title, double width){
  return DataColumn(
    label: Container(
      width: width,
    child: Text(title,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 11.0,
        )),
  ));
}
DataRow _getRows(agulha){
  return DataRow(
        cells: [
          DataCell(Container(
              width: 35,
              child: Text('${agulha.comprimento}',
                  style: TextStyle(fontSize: 9.5)))),
          DataCell(Container(
              width: 50,
              child: Text('${agulha.indicacao}',
                  style: TextStyle(fontSize: 9.5)))),
          DataCell(Container(
              width: 100,
              child: Text('${agulha.pregaSubcutanea}',
                  style: TextStyle(fontSize: 9.5)))),
          DataCell(Container(
              width: 90,
              child: Text('${agulha.angulo}',
                     textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 9.5)))),
          DataCell(Container(
              width: 130,
              child: Text('${agulha.observacoes}',
                  style: TextStyle(fontSize: 9.5))))
        ],
      );
}




// agulhaRows
//           .map((Agulha agulha) => DataRow(
//                 cells: [
//                   DataCell(Container(
//                       width: 25,
//                       child: Text('${agulha.comprimento}',
//                           style: TextStyle(fontSize: 9.5)))),
//                   DataCell(Container(
//                       width: 45,
//                       child: Text('${agulha.indicacao}',
//                           style: TextStyle(fontSize: 9.5)))),
//                   DataCell(Container(
//                       width: 100,
//                       child: Text('${agulha.pregaSubcutanea}',
//                           style: TextStyle(fontSize: 9.5)))),
//                   DataCell(Container(
//                       width: 20,
//                       child: Text('${agulha.angulo}',
//                           style: TextStyle(fontSize: 9.5)))),
//                   DataCell(Container(
//                       width: 140,
//                       child: Text('${agulha.observacoes}',
//                           style: TextStyle(fontSize: 9.5))))
//                 ],
//               ))
//           .toList(),