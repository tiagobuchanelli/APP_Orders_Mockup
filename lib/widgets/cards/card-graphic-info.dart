import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mockup_app_pedidos/models/graphic-info.model.dart';

class CardgraphicInfo extends StatefulWidget {
  final int index;
  final List<GraphicInfo> listDataReceive;

  CardgraphicInfo(@required this.index, @required this.listDataReceive);

  @override
  _CardgraphicInfoState createState() => _CardgraphicInfoState();
}

class _CardgraphicInfoState extends State<CardgraphicInfo> {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.deepOrange,
    );
  }
}
