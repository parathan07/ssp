import 'package:flutter/material.dart';

import '../app_colors.dart';

class ProfilePage extends StatefulWidget
{
  final String data;
  ProfilePage({Key? key, required this.data}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState( data: data);

}

class _MyHomePageState extends State<ProfilePage>
{
 final String data;
  _MyHomePageState({required this.data});


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
        child: Center(
          child:
            Text(
              widget.data,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 32,
                color: Colors.amber,
              ),
          ),
        ),
      ),
    );
  }

}