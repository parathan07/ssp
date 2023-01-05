import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'daily_add.dart';

class TimesheetPage extends StatefulWidget
{
  final String data;
  TimesheetPage({Key? key, required this.data}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState( data: data);

}

class _MyHomePageState extends State<TimesheetPage>
{
 final String data;
  _MyHomePageState({required this.data});

 void _addDaily()
 {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DailyTimeSheetAddPage(data: data)),);
 }
 void _incrementCounter()
 {
  // Navigator.push(context, MaterialPageRoute(builder: (context) => BugsAddPage(data: data)),);
 }
 _itemClick(int index)
 {
  // Navigator.push(context, MaterialPageRoute(builder: (context) => BugsUpdatePage(data: data)),);
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.app_title_bar_color,
          bottom: const TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.view_day_sharp),text: 'Daily',),
              Tab(icon: Icon(Icons.view_week_sharp),text: 'Weekly',),
              Tab(icon: Icon(Icons.calendar_view_month_sharp),text: 'Monthly',),
            ],
          ),
          title: Text(widget.data.toUpperCase()),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              body: Container(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 30, bottom: 30),
                decoration: const BoxDecoration(color: Colors.white),
                child: ListView.builder(
                    itemCount:5 ,
                    itemBuilder: (context, index)
                    {
                      return Card(
                        child: InkWell(
                          child:Center(
                            child: Container(
                              color: Colors.white,
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: AppColors.app_circle_bg_color,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white, width: 1)),
                                    child: InkWell(
                                      child: Text("Daily".capitalize1(),
                                        textAlign: TextAlign.center,
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "ssp mobile development",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text("Type: Feature, Priority: Medium")
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("1.0"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: (){_itemClick(index);},
                          highlightColor: AppColors.app_circle_bg_color,
                        ),
                      );
                    }
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: _addDaily,
                tooltip: 'Increment',
                backgroundColor: AppColors.app_circle_bg_color,
                child: Icon(Icons.add),
              ),
            ),
            Scaffold(
              body: Container(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 30, bottom: 30),
                decoration: const BoxDecoration(color: Colors.white),
                child: ListView.builder(
                    itemCount:5 ,
                    itemBuilder: (context, index)
                    {
                      return Card(
                        child: InkWell(
                          child:Center(
                            child: Container(
                              color: Colors.white,
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: AppColors.app_circle_bg_color,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white, width: 1)),
                                    child: InkWell(
                                      child: Text("Weekly".capitalize1(),
                                        textAlign: TextAlign.center,
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "ssp mobile development",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text("Type: Feature, Priority: Medium")
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("1.0"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: (){_itemClick(index);},
                          highlightColor: AppColors.app_circle_bg_color,
                        ),
                      );
                    }
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                backgroundColor: AppColors.app_circle_bg_color,
                child: Icon(Icons.add),
              ),
            ),
            Scaffold(
              body: Container(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 30, bottom: 30),
                decoration: const BoxDecoration(color: Colors.white),
                child: ListView.builder(
                    itemCount:5 ,
                    itemBuilder: (context, index)
                    {
                      return Card(
                        child: InkWell(
                          child:Center(
                            child: Container(
                              color: Colors.white,
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: AppColors.app_circle_bg_color,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white, width: 1)),
                                    child: InkWell(
                                      child: Text("Monthly".capitalize1(),
                                        textAlign: TextAlign.center,
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "ssp mobile development",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text("Type: Feature, Priority: Medium")
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("1.0"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: (){_itemClick(index);},
                          highlightColor: AppColors.app_circle_bg_color,
                        ),
                      );
                    }
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                backgroundColor: AppColors.app_circle_bg_color,
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
  String capitalize1() {
    return "${this[0].toUpperCase()}";
  }
}