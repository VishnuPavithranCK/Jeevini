import 'package:flutter/material.dart';
import 'package:jeevini/screens/signin.dart';
import 'package:jeevini/screens/signup.dart';
import 'package:jeevini/screens/news_listing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeevini',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsPage(),
    );
  }
}

