import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String coverPhoto =
      "https://media.licdn.com/dms/image/v2/D5616AQFxsaXYhBzefQ/profile-displaybackgroundimage-shrink_350_1400/profile-displaybackgroundimage-shrink_350_1400/0/1695367923373?e=1735171200&v=beta&t=IVhSo4MSDX5UX3C28PNlYmm_1L-e2LblEQgPbjhlahc";
  final String src =
      "https://scontent.fdac13-1.fna.fbcdn.net/v/t39.30808-6/370165553_1962644294110820_1831080303662547163_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHMPIoWmD9b-3KqQ3F9PngygzLpfrmUl-uDMul-uZSX67YoQqrPLyWQVYUaIccjLPgzSJrpmWbOCzP6koTLhHmA&_nc_ohc=Ve6I-7XubPUQ7kNvgFDQ3wk&_nc_zt=23&_nc_ht=scontent.fdac13-1.fna&_nc_gid=AQo7o1gYqeShmL218sK_Znw&oh=00_AYBxf54FI1Vh1ZE-4UG7KjfMsiBihJrtJahjRXLC2eYJvQ&oe=6722EA30";

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: ClipOval(
                  child: Container(
                    width: screenWidth < 600 ? screenWidth * 0.8 : 400,
                    height: screenWidth < 600 ? 300 : 400,
                    child: Image.network(
                      src,
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: const [
                    Text(
                      "WELCOME TO MY PORTFOLIO",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Shaon Roy",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Flutter Developer || Competitive Programmer || Problem Solver",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              //
              // You can add social media links or other information here.
              //
            ],
          ),
        ),
      ),
    );
  }
}
