import 'package:flutter/material.dart';
import 'package:projeto_diabetes/CategoryItemWidget.dart';
import 'Model/CategoryModel.dart';
import 'sideleft-menu.dart';
import 'package:projeto_diabetes/CustomAppBar.dart';

class HomeDashboard extends StatelessWidget {
  static const title = "Diabetes";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: CustomAppBar(title: title),
        drawer: SideLeftMenu(),
        body: new DashboardBody());
  }
}

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        FittedBox(
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CategoryItemWidget(
                      categoryModel: getCategory('sinais-e-sintomas'),
                      route: '/diabetes-homepage'),
                  CategoryItemWidget(
                      categoryModel: getCategory('insumos'),
                      route: '/insumos-homepage'),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CategoryItemWidget(
                      categoryModel: getCategory('insulina'),
                      route: '/insulina-homepage'),
                  CategoryItemWidget(
                      categoryModel: getCategory('glicemia'),
                      route: '/glicemia-homepage'),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CategoryItemWidget(
                      categoryModel:
                          getCategory('locais-e-tecnincas-de-aplicacao'),
                      route: '/aplicando-insulina-homepage'),
                  CategoryItemWidget(
                      categoryModel:
                          getCategory('hipoglicemia-e-cetoacidose'),
                      route: '/hipoglicemia-e-cetoacidose-homepage'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
