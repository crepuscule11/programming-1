import 'dart:io';

import 'package:flutter/material.dart';
import 'package:goldengate_mobile/expirement/Categories_home.dart';
import 'package:goldengate_mobile/expirement/cart_screen.dart';
import 'package:goldengate_mobile/screens/Homepage.dart';

import 'package:goldengate_mobile/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import 'data/CartItem.dart';
import 'model/controller.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp(
    customerId: '',
  ));
}

class MyApp extends StatelessWidget {
  final String customerId;

  const MyApp({Key? key, required this.customerId}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to GoldenGate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.blueGrey[100],
        primaryColor: Colors.blue[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(
        id: '',
      ),
    );
  }
}
