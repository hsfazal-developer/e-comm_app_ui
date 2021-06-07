import 'package:ecom_app_ui/listView.dart';
import 'package:ecom_app_ui/userProfile.dart';
import 'package:flutter/material.dart';
import 'collections.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ListViewHomePage(),
      //home: Collections(),
      home: UserProfile(),
    );
  }
}
