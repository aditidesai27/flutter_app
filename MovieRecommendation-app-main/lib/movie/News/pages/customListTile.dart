import 'package:flutter/material.dart';
import 'article_model.dart';
import 'articles_details_page.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    splashColor: Colors.cyan,
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(article: article)));
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 56, 56, 56),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 2, color: Colors.cyan),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(223, 81, 219, 253),
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          article.urlToImage != null
              ? Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(article.urlToImage),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12.0),
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
          SizedBox(height: 8.0),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 36, 36),
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.cyan)),
            child: Text(
              article.source.name,
              style: TextStyle(
                color: Colors.cyanAccent,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            article.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}
