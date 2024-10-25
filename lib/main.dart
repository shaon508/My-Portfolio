import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(
      // primarySwatch: Colors.white,
      // ),
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<HomeActivity> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )),
            backgroundColor: Colors.purpleAccent.shade700,
            foregroundColor: Colors.black,
            titleSpacing: 8,
            toolbarOpacity: 1,
            elevation: 10,
            title: Center(
              child: const Text(
                "BMI CHECKER",
                style: TextStyle(
                    // color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
        body: Container(
          color: bgColor,
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //  'BMI',
                  //   style: TextStyle(fontSize: 34, fontWeight: FontWeight.w100),
                  //  ),
                  SizedBox(
                    height: 21,
                  ),
                  TextField(
                    controller: wtController,
                    decoration: InputDecoration(
                      label: Text('Enter your weight (in kg)'),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  TextField(
                    controller: ftController,
                    decoration: InputDecoration(
                      label: Text('Enter your height (in feet)'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  TextField(
                    controller: inController,
                    decoration: InputDecoration(
                      label: Text('Enter your height (in inch)'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var inch = inController.text.toString();
                      if (wt != "" && ft != "" && inch != "") {
                        // main calculation

                        var intWt = int.parse(wt);
                        var intFt = int.parse(ft);
                        var intInch = int.parse(inch);

                        var totalInch = intFt * 12 + intInch;
                        var convertToMeter = 0.0254 * totalInch;

                        var bmi = intWt / (convertToMeter * convertToMeter);
                        var msg = "";
                        if (bmi < 18) {
                          msg = "You're UnderWeight !";
                          bgColor = Colors.yellowAccent.shade200;
                        } else if (bmi > 25) {
                          msg = "You're OverWeight !";
                          bgColor = Colors.redAccent.shade200;
                        } else {
                          msg = "You're Healthy!";
                          bgColor = Colors.greenAccent.shade200;
                        }
                        setState(() {
                          result =
                              "$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
                        });
                      } else {
                        setState(() {
                          result = "Please fill the all required fill!";
                        });
                      }
                    },
                    child: Text("Calculate"),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    result,
                    style: TextStyle(fontSize: 19),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
