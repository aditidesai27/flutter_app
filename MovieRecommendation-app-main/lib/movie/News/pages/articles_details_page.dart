import 'package:flutter/material.dart';
import 'article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          article.title,
          style: TextStyle(color: Colors.cyan),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(padding: EdgeInsets.only(left: 5)),
            article.urlToImage != null
                ? Container(
                    height: 300.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(article.urlToImage),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                  )
                : Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1594663805807-29a7cc1847c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aG9sbHl3b29kfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                splashColor: Colors.cyan,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 6, right: 6),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 43, 43, 43),
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.cyan)),
                  child: Text(
                    article.source.name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                article.description,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
