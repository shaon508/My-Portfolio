import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyPortfolio/about.dart';
import 'MyPortfolio/blog.dart';
import 'MyPortfolio/contact.dart';
import 'MyPortfolio/home.dart';
import 'MyPortfolio/project.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        //
        //appBar
        //
        appBar: AppBar(
          title: Text(
            "<Shaon Roy/>",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          //
          //My Tab bar
          //
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "About",
              ),
              Tab(
                text: "Project",
              ),
              Tab(
                text: "Blog",
              ),
              Tab(
                text: "Contact",
              ),
              // Tab(text: "Resume",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            AboutPage(),
            ProjectPage(),
            BlogPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
