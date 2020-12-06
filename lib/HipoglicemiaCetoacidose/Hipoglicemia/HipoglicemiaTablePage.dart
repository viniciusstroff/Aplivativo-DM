

import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Model/hipoglicemia.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/data/data.dart';


class HipoglicemiaTablePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: CustomScrollView(
        slivers: <Widget>[
          
          CustomSliverAppBar(
            title: "Níveis de Hipoglicemia" ,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                 Container(
                  margin: EdgeInsets.all(1.0),
                  child: Column(children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: buildDataTable(context),
                        ),
                      ),
                    ),
                    ReferenceTextComponent(text: "Insulinas - Insulinizando o paciente com diabetes - (2019)")
                  ]),
                ),
              ]
            ),
            )
        ]
    ));
      
  }

  
}

Widget buildDataTable(context) {
  bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double rowHeight = isPortrait 
      ? MediaQuery.of(context).size.height *0.5 / hipoglicemiaRows.length 
      :  MediaQuery.of(context).size.height *0.5 / hipoglicemiaRows.length ;

  double rowWidth =  isPortrait 
    ? MediaQuery.of(context).size.width * 0.28
    : MediaQuery.of(context).size.width * 0.27;

  double textSize = (rowWidth *15)/100;

  return DataTable(
      columnSpacing: 5,
      columns: [
          _getColumn('${hipoglicemiaColumns.nivel}',rowWidth,textSize: textSize),
          _getColumn('${hipoglicemiaColumns.valoresGlicose}', rowWidth,textSize: textSize),
          _getColumn('${hipoglicemiaColumns.observacoes}',rowWidth,textSize: textSize),
        ],
      rows: hipoglicemiaRows.map(
        (Hipoglicemia hipoglicemia) => _getRows(hipoglicemia, rowWidth)
      ).toList(),
      dataRowHeight: rowHeight*1.3,
      horizontalMargin: 10,
      headingRowHeight: rowHeight,
      

    );

    
}

DataColumn _getColumn(String title, double width, {double textSize}){
  return DataColumn(
    label: Container(
    width: width,
    child: Text(title,
        softWrap: true,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: textSize != null ? textSize : 16,
        )
        )));
}
DataRow _getRows(hipoglicemia, double width,){
  return DataRow(
        cells: [
          DataCell(Container(
              width:  width,
              child: Text('${hipoglicemia.nivel}',
                  style: TextStyle(fontSize:  15,)))),
          DataCell(Container(
              width: width,
              child: Text('${hipoglicemia.valoresGlicose}',
                  style: TextStyle(fontSize:  15,)))),
          DataCell(Container(
              width: width,
              child: Text('${hipoglicemia.observacoes}',
                  style: TextStyle(fontSize:  15,))))
                  
        ],
      );

      
}


