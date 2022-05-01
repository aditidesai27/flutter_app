import 'package:flutter/material.dart';

class Aboutme extends StatefulWidget {
  Aboutme({Key key}) : super(key: key);
  @override
  _AboutmeState createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  List about = [
    "",
    // "Hi there! JASHWANTH here.",
    // "API used from TMDB.",
    // "SENTIMENT ANALYSIS APPLIED ON MOVIE REVIEWS.",
    // "Basically this is my personal project.",
    // "if you like the app you can rate this app.",
    // "ANY QUERIES VISIT THE SITE GIVEN LINK IN THE BELOW.",
    // "GITHUB : https://github.com/jashwanth999",
    // "WEBSITE : https://jashwanth.netlify.app/"
    "The basic idea behind this system is that movies that are more popular and critically acclaimed will have a higher probability of being liked by the average audience. Second is content-based filtering, where we try to profile the user's interests using information collected, and recommend items based on that profile. The other is collaborative filtering, where we try to group similar users together and use information about the group to make recommendations to the user."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "ABOUT",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: about.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0)
                  return Container(
                      height: 150,
                      width: 100,
                      child: Image(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                            "https://github.com/sarthakdharia/Movify/blob/main/newfold/logo_movify.png?raw=true"),
                      ));
                return Container(
                    margin: EdgeInsets.all(10),
                    child: Text("->  " + about[index].toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.5,
                            fontWeight: FontWeight.bold)));
              })),
    );
  }
}
