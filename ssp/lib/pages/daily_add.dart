import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ssp/app_api_names.dart';
import 'package:ssp/data/project_list_data.dart';
import '../app_colors.dart';
import 'package:http/http.dart' as http;

class DailyTimeSheetAddPage extends StatefulWidget
{
  final String data;
  DailyTimeSheetAddPage({Key? key, required this.data}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<DailyTimeSheetAddPage>
{
 String dropdownValueProjectType = 'Select';
 String dropdownValueType = 'Select';
 String dropdownValuePriority = 'Select';
 String dropdownValueRelease = 'Select';

  var user_id = "";

 ProjectListData _futureAlbum = ProjectListData(status: false,  message: "status error ", data: Projects(project_list: [], project_Task_list: [], case_list: []),);

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getSharedData();

  }

 void _incrementCounter()
 {
   Navigator.pop(context);
   }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: AppColors.app_title_bar_color,
        title: Text('Add ${widget.data} '.toUpperCase()),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 5.0),
                  labelText: 'User ID ',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                child: Text(user_id),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 5.0),
                  labelText: 'Project Type',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                child: DropdownButtonHideUnderline( child:DropdownButton<String>(
                  value: dropdownValueProjectType,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueProjectType = newValue!;
                    });
                  },
                  items: <String>['Select','Project', 'Project Task', 'Cases']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 5.0),
                  labelText: 'Type',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                child: DropdownButtonHideUnderline( child:DropdownButton<String>(
                  value: dropdownValueType,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueType = newValue!;
                    });
                  },
                  items: <String>['Select','Defect', 'Feature']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 5.0),
                  labelText: 'Priority',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                child: DropdownButtonHideUnderline( child:DropdownButton<String>(
                  value: dropdownValuePriority,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValuePriority = newValue!;
                    });
                  },
                  items: <String>['Select','High', 'Medium', 'Low', 'Urgent']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 5.0),
                  labelText: 'Fixed in Release',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                child: DropdownButtonHideUnderline( child:DropdownButton<String>(
                  value: dropdownValueRelease,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueRelease = newValue!;
                    });
                  },
                  items: <String>['Select','1.0']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),  ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 20),
              child: TextField(
                minLines: 1,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                    hintText: 'Enter a valid text'),
              ),
            ),
            Container(
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                  color: AppColors.app_circle_bg_color, borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: _incrementCounter,
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> _getSharedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(()
    {
      user_id = prefs.getString("user_id")!;
     // _futureAlbum = ProjectListData(status: false,  message: "status error ", data: Projects(project_list: [], project_Task_list: [], case_list: []),);
      createAlbum(user_id);
    });
  }
 Future<void> createAlbum(String title) async
 {
   //e9e50bb7-7442-2ddd-e0a9-63a54eb5795a
   final response = await http.post(
     Uri.parse('${AppApiNames.baseurl}${AppApiNames.moduleTimesheet}${AppApiNames.method_project_list}'),
     headers: <String, String>{
       'Content-Type': 'application/json; charset=UTF-8',
     },
     body: jsonEncode(<String, String>{
       'user_id': title,
     }),
   );

   if (response.statusCode == 200)
   {
     // If the server did return a 201 CREATED response,
     // then parse the JSON.
     setState(() {
       _futureAlbum = ProjectListData.fromJson(jsonDecode(response.body));
     //  _futureAlbum = json.decode(response.body);
     });
   }
   else {
     // If the server did not return a 201 CREATED response,
     // then throw an exception.
     //throw Exception('Failed to create album.');
     setState(() {
       _futureAlbum = ProjectListData(status: false,  message: "status error ", data: Projects(project_list: [], project_Task_list: [], case_list: []),);
     });
   }
 }

}

