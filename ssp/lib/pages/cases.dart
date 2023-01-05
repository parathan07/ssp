import 'package:flutter/material.dart';
import 'package:ssp/pages/cases_add.dart';

import '../app_colors.dart';
import 'cases_update.dart';

class CasesPage extends StatefulWidget
{
  final String data;
  CasesPage({Key? key, required this.data}) : super(key: key);

  @override
  _MyCasesPageState createState() => _MyCasesPageState();

}

class _MyCasesPageState extends State<CasesPage>
{
  int _selectedIndex = 0;

  void _incrementCounter()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CasesAddPage(data: widget.data)),);
  }
    _itemClick(int index)
   {
      // setState(()
      // {
      //   _selectedIndex = index;
      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${index}   pressed!'),));
      // });
    // Scaffold.of(context)
     Navigator.push(context, MaterialPageRoute(builder: (context) => CasesUpdatePage(data: widget.data)),);

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
                                // Container(
                                //   height: 60,
                                //   width: 60,
                                //   child: Image.network(
                                //     "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: AppColors.app_circle_bg_color,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.white, width: 1)),
                                  child: InkWell(
                                    child: Text("A".toUpperCase(),
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
                                          "Umberla for sale ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text("200 bought this")
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("4.5"),
                                      Icon(
                                        Icons.star,
                                        size: 14,
                                      ),
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
    );
  }

}