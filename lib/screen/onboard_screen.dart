import 'package:flutter/material.dart';
import 'package:gamingnews/screen/screen.dart';

class OnBoard_Screen extends StatelessWidget {
  const OnBoard_Screen({super.key});

  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              'assets/illust.png',
              width: 250,
              height: 250,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            child: Text("Experience Gaming News From Your Phone",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          SizedBox(
            height: 40,
          ),
          Text("See Newest news In Home",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          Text("Your Favorite Category By Discovery",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          Text("Or Personalize Yourself In Profile",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
          SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, LogReg_Screen.routeName);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, fixedSize: const Size(345, 28)),
            child: const Text(
              "Get Started",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
