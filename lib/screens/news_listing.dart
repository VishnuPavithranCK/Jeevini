import 'package:flutter/material.dart';
import 'package:jeevini/models/api_manager.dart';
import 'package:jeevini/models/news_info.dart';
import 'package:jeevini/screens/favorite.dart';
import 'package:jeevini/widgets/news_card.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Future<Welcome> _news;
  
  @override
  void initState() {
    _news = ApiManager().getNews();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('News List'),
      ),
      body: FutureBuilder<Welcome>(
        future: ApiManager().getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.data.length,
                itemBuilder: (context, index) {
                  var newList = snapshot.data.data[index];
                  return NewsCard(
                    summary:newList.summary, 
                    title: newList.title,
                    published: newList.published,);
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
     
    );
  }
}
