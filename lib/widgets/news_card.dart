import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  final String title;
  final String summary;
  final String published;
  NewsCard(
      {@required this.summary, @required this.title, @required this.published});

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 5,
        shadowColor: Colors.black.withOpacity(0.7),
        child: Container(
          padding: EdgeInsets.all(8.0),
          height: 120,
          width: 400,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                padding: EdgeInsets.all(20),
                child: IconButton(
                  onPressed: (){},
                 icon: Icon(Icons.favorite_border_outlined,
                  size: 30,)
                )),
            SizedBox(width: 10),
            Flexible(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      widget.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )),
                    SizedBox(height: 8),
                    Expanded(
                        child: Text(
                      widget.summary,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )),
                    SizedBox(height: 8),
                    Expanded(
                        child: Text(
                      widget.published,
                      overflow: TextOverflow.clip,
                      style: TextStyle(color: Colors.grey),
                    )),
                  ]),
            )
          ]),
        )
        );
  }
}
