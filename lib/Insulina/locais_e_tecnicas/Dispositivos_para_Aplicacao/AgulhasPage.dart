import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';
import 'package:projeto_diabetes/Model/agulha.dart';
import 'package:projeto_diabetes/components/ImageDetails.dart';
import 'package:projeto_diabetes/components/ReferenceTextComponent.dart';
import 'package:projeto_diabetes/components/SimpleTitleComponent.dart';
import 'package:projeto_diabetes/data/data.dart';

class AgulhasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Agulhas'),
        body: CustomScrollView(slivers: <Widget>[
      SliverList(
        delegate: SliverChildListDelegate([
          Container(
            margin: EdgeInsets.all(1.0),
            child: Column(children: [
              // SimpleTitleComponent(text: 'Agulhas',),
             
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
              ReferenceTextComponent(
                  text:
                      "(SBD, 2019-2020)"),
              imageDetails2(context, image: 'assets/images/agulhas-ponta.PNG', tagname: 'agulhas-ponta', height: 10),
              imageDetails2(context, text:'', image:'assets/images/agulhas.jpeg', tagname:'agulhas-tamanho', height:10)
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
      ? MediaQuery.of(context).size.height * 0.7 / agulhaRows.length
      : MediaQuery.of(context).size.height * 0.5 / agulhaRows.length;

  double rowWidth = isPortrait
      ? MediaQuery.of(context).size.width * 0.35
      : MediaQuery.of(context).size.width * 0.30;

  double textSize = isPortrait ? 15 : 16;

  return DataTable(
    columnSpacing: 5,
    columns: [
      _getColumn('${agulhaColumns.comprimento}', rowWidth - 60,
          textSize: textSize),
      _getColumn('${agulhaColumns.indicacao}', rowWidth - 40,
          textSize: textSize),
      _getColumn('${agulhaColumns.pregaSubcutanea}', rowWidth - 30,
          textSize: textSize),
      _getColumn('${agulhaColumns.angulo}', rowWidth - 30, textSize: textSize),
      _getColumn('${agulhaColumns.observacoes}', rowWidth,
          textSize: textSize),
    ],
    rows:
        agulhaRows.map((Agulha agulha) => _getRows(agulha, rowWidth)).toList(),
    dataRowHeight: rowHeight * 1.5,
    horizontalMargin: 10,
    headingRowHeight: MediaQuery.of(context).size.height / 10,
  );
}

DataColumn _getColumn(String title, double width, {double textSize}) {
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
          )
      )
  );
}

DataRow _getRows(
  agulha,
  double width,
) {
  return DataRow(
    cells: [
      _dataCell(agulha: '${agulha.comprimento}', width: width -60),
      _dataCell(agulha: '${agulha.indicacao}', width: width -40),
      _dataCell(agulha: '${agulha.pregaSubcutanea}', width: width -30),
      _dataCell(agulha: '${agulha.angulo}', width: width -30),
      _dataCell(agulha: '${agulha.observacoes}', width: width),
    ],
  );
}

DataCell _dataCell({String agulha, double width}) {
  return DataCell(
    Container(
      width: width,
      child: Text(agulha,
          softWrap: true,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 15,
          )
      )
    )
  );
}

Widget imageDetails2(context, {String image, String tagname, String text, double height = 0.5}) {
  bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  double height = isPortrait
      ? MediaQuery.of(context).size.height / 5
      : MediaQuery.of(context).size.height /2;

  double width = isPortrait
      ? MediaQuery.of(context).size.width /1.2
      : MediaQuery.of(context).size.width /2;
  return Center(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width:  width ,
                height:height),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails(text, text, image, tagname);
            }));
          },
        ),
         Text(text != null ? text : '',
            style: TextStyle(
              fontSize: 18,
            ))
      ],
    ),
  );
}
