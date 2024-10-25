import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green,
            appBarTheme: AppBarTheme(backgroundColor: Colors.blue,)),
        color: Colors.green,
        debugShowCheckedModeBanner: false,
        home:  HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              OutlinedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity1()));
                  },
                  child: Text("Go to Activity 1"),
              ),

              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity2()));
                },
                child: Text("Go to Activity 2"),
              )


            ],
          ),
        );
  }
}

class Activity1 extends StatelessWidget {
  Activity1({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text("This is activity 1"),
         ),
       );
  }
}

class Activity2 extends StatelessWidget {
  Activity2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is activity 2"),
      ),
    );
  }
}
