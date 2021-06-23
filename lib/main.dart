import 'package:flutter/material.dart';
import 'package:jeevini/screens/news_listing.dart';
import 'package:jeevini/screens/signin.dart';
import 'package:jeevini/screens/signup.dart';
import 'package:jeevini/widgets/bottom_bar.dart';

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
     initialRoute: SignUP.routeName,
      routes: {
          SignIn.routeName: (context) => SignIn(),
          SignUP.routeName: (context) => SignUP(),
          BottomBar.routeName: (context) => BottomBar(),
        },
    );
  }
}
