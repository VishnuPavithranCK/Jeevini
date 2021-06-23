import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:jeevini/models/news_info.dart';
import 'dart:convert';

class ApiManager {

  Future<Welcome> getNews() async {
    var client = http.Client();
    var newsModel = null;

    var response = await client.get('https://api.first.org/data/v1/news');
    if(response.statusCode == 200){
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
       newsModel =Welcome.fromJson(jsonMap);
    }
  
   return newsModel;
  
  }
}
