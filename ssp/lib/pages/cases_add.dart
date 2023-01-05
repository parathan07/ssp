import 'package:flutter/material.dart';

import '../app_colors.dart';

class CasesAddPage extends StatefulWidget
{
  final String data;
  CasesAddPage({Key? key, required this.data}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState( data: data);

}

class _MyHomePageState extends State<CasesAddPage>
{
 final String data;
  _MyHomePageState({required this.data});
 String dropdownValueStatus = 'Select';
 String dropdownValueType = 'Select';
 String dropdownValuePriority = 'Select';
 String dropdownValueRelease = 'Select';
 void _incrementCounter()
 {
   Navigator.pop(context);
   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.app_title_bar_color,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Add ${widget.data}'.toUpperCase()),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
          children: <Widget>[
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 35, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Subject',
                    hintText: 'Enter a valid text'),
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
                  labelText: 'Status',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                child: DropdownButtonHideUnderline( child:DropdownButton<String>(
                  value: dropdownValueStatus,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueStatus = newValue!;
                    });
                  },
                  items: <String>['Select','New', 'Assigned', 'Closed', 'Pending Input', 'Rejected','Duplicate']
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
                  items: <String>['Select','Administration', 'Product','User']
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
                  items: <String>['Select','High', 'Medium', 'Low']
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

}