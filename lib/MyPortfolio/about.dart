import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});

  final String myPhoto =
      "https://scontent.fdac13-1.fna.fbcdn.net/v/t39.30808-6/330339326_1270630827211786_7744788496913706724_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGhuDjU-gNodXF4viATxkywh9l_nuAuwjWH2X-e4C7CNclEAVDA4-AZpgtQlssjewRVPITWHptyF22hLGWxAYtd&_nc_ohc=YU87f1KIFzUQ7kNvgFv9j87&_nc_zt=23&_nc_ht=scontent.fdac13-1.fna&_nc_gid=A5U1Y6dRgJSSrNdqhtqnGB2&oh=00_AYD6EzxpTfGfOWTKgPMRWoUHs4poWt7JIxIFg0QxzLEYDA&oe=6722D661";
  final String msg =
      'I recently graduated with a degree in Computer Science and Engineering from Sylhet Engineering College, Sylhet. During my college years, I actively participated in programming contests to enhance my C++ skills and build my problem-solving abilities. Currently, I am focusing on learning Flutter development.';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Get to Know Me",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: screenWidth < 600 ? screenWidth * 0.8 : 300,
                      height: screenWidth < 600 ? 300 : 400,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: NetworkImage(myPhoto),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth < 600 ? screenWidth * 0.8 : 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Who am I?",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "I'm Shaon Roy, I am Competitive Programmer, Problem Solver & Flutter Developer",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            msg,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Technologies I have worked with:",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Flutter || Dart || Firebase || C++ || MySql || BlockChain",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
