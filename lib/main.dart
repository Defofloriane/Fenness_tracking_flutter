import 'package:fennesstracking/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rout.dart' as router;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    onGenerateRoute: router.generateRoute,
  ));
}
