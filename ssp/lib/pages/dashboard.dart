import 'package:flutter/material.dart';
import 'package:ssp/pages/pie_chart.dart';

import '../app_colors.dart';

class DashboardPage extends StatefulWidget
{
  final String data;
  DashboardPage({Key? key, required this.data}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState( data: data);

}

class _MyHomePageState extends State<DashboardPage>
{
 final String data;
  _MyHomePageState({required this.data});

 Widget _buildCard() {
   final double deviceHeight = MediaQuery.of(context).size.height;
   return SizedBox(
     height: deviceHeight*2,
     width: deviceHeight*2,
     child: ClipRRect(
         borderRadius: BorderRadius.circular(10.0),
         child: PieCharts(),
     ),
   );
 }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
        backgroundColor: AppColors.app_title_bar_color,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.data.toUpperCase()),
    ),
    body:Container(
      decoration: const BoxDecoration(color: Colors.white),
      // child: Center(
      //   child:PieCharts(),
      // ),
    ),
    );
  }

}