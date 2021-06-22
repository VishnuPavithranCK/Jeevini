import 'package:flutter/material.dart';
import 'package:jeevini/screens/favorite.dart';
import 'package:jeevini/widgets/news_card.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('News'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> FavoritesPage()));
            },
            icon: Icon(Icons.card_travel),
          ),
          SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: List.generate(10, (index) => NewsCard()),
            )),
      ),
    );
  }
}
