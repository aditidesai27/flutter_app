import 'package:flutter/material.dart';
import 'pages/customListTile.dart';
import 'pages/article_model.dart';
import 'pages/api_service.dart';

class NewsHomepage extends StatefulWidget {
  @override
  _NewsHomepageState createState() => _NewsHomepageState();
}

class _NewsHomepageState extends State<NewsHomepage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("MoviFy News",
              style: TextStyle(color: Color.fromARGB(255, 43, 241, 255))),
          backgroundColor: Color.fromARGB(255, 34, 34, 34)),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
