import 'package:flutter/material.dart';
import 'package:gamingnews/screen/screen.dart';

class LogReg_Screen extends StatelessWidget {
  const LogReg_Screen({
    super.key,
  });

  static const routeName = '/logreg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/logreg_bg.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logreg_illust.png',
                    width: 250,
                    height: 250,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome To Your \nGaming News App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum non ipsum eu viverra. Curabitur aliquam justo ligula, at pellentesque lectus fermentum quis. Vestibulum ante ipsum primis in ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 63,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Login_Screen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: const Size(345, 28)),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Register_Screen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 218, 218),
                        fixedSize: const Size(345, 28)),
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
