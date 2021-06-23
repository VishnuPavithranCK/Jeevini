import 'package:flutter/material.dart';

import 'package:jeevini/screens/news_listing.dart';
import 'package:jeevini/screens/favorite.dart';


class BottomBar extends StatefulWidget {
  
static const String routeName = 'bottomBar';
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex =0;
  List<Widget> _widgetOptions = [
    NewsPage(),
    FavoritesPage()
  ];
  void _onItemTap (int index){
    setState(() {
      _selectedIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
       bottomNavigationBar: BottomNavigationBar(
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.red,),
            label: 'Favs',
          ),
          
        ],
        currentIndex: _selectedIndex,
        onTap:_onItemTap ,
      ),
    );
  }
}