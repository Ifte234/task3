import 'package:flutter/widgets.dart';
import 'package:tasks3/presentation/MyFirebaseScreen/MyFireBase.dart';
import 'package:tasks3/presentation/apiScreen/apiScreen.dart';
import 'package:tasks3/presentation/myLocalDbScreen/myLocalDbScreen.dart';

List<Widget> bottomNavScreens = <Widget>[
  MyFirebaseScreen(),
  ApiScreen(),
  MyLocalDbScreen()

  // Text('Firebase Data'),
  // Text("Api Data"),
  // Text('Local DB Data')
];
