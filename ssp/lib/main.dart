import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssp/app_colors.dart';
import 'pages/dashboard.dart';
import 'pages/bugs.dart';
import 'pages/cases.dart';
import 'pages/timesheet.dart';
import 'pages/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs =await SharedPreferences.getInstance();
    prefs.setString("user_id","e9e50bb7-7442-2ddd-e0a9-63a54eb5795a");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  static const String _title = 'Self Service Portal (SSP)';
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false, // 1
          systemOverlayStyle: SystemUiOverlayStyle.light, // 2
        ),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

 // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<String> _widgetString = <String>[
      'dash board',
      'bugs',
      'cases',
      'time Sheet',
      'profile',
  ];

  List<Widget> _widget = <Widget>[
    DashboardPage(data: _widgetString.elementAt(0)),
    BugsPage(data: _widgetString.elementAt(1)),
    CasesPage(data: _widgetString.elementAt(2)),
    TimesheetPage(data: _widgetString.elementAt(3)),
    ProfilePage(data: _widgetString.elementAt(4)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(_widgetString.elementAt(_selectedIndex).toUpperCase()),
      // ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // child: Text(_widgetString.elementAt(_selectedIndex), style: optionStyle,),
       // child: BugsPage(_widgetString.elementAt(_selectedIndex), data: _widgetString.elementAt(_selectedIndex),),
        child: _widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: AppColors.app_icon_color, size: 25),
        selectedItemColor: AppColors.app_icon_color,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: _widgetString.elementAt(_selectedIndex),
            backgroundColor: AppColors.app_title_color,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adb_sharp),
            label: _widgetString.elementAt(_selectedIndex),
            backgroundColor: AppColors.app_title_color,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_sharp),
            label: _widgetString.elementAt(_selectedIndex),
            backgroundColor: AppColors.app_title_color,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: _widgetString.elementAt(_selectedIndex),
            backgroundColor: AppColors.app_title_color,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: _widgetString.elementAt(_selectedIndex),
            backgroundColor: AppColors.app_title_color,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
