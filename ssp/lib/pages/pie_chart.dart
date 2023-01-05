import 'package:flutter/material.dart';
import '/data/grades_data.dart';
import 'package:pie_chart/pie_chart.dart';

class PieCharts extends StatelessWidget {


  Map<String, double> dataMap = {
    "Bugs": 5,
    "Cases": 3,
    "Time Sheet": 2,
  };
  final colorList = <Color>[Colors.redAccent,Colors.purple,Colors.pink,];

  @override
  Widget build(BuildContext context) {
    return  PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 100,
      chartRadius: MediaQuery.of(context).size.width*(3/4) ,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: ChartType.disc,
      ringStrokeWidth: 32,
      centerText: "SSP",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.bottom,
        showLegends: true,
        legendShape: BoxShape.rectangle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    );
  }
}