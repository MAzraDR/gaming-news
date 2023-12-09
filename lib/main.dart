import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamingnews/firebase_options.dart';
import 'screen/screen.dart';

late FirebaseApp app;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gaming News App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        Home_Screen.routeName: (context) => const Home_Screen(),
        Discover_Screen.routeName: (context) => const Discover_Screen(),
        Article_Screen.routeName: (context) => const Article_Screen(),
        Profile_screen.routeName: (context) => const Profile_screen(),        
        LogReg_Screen.routeName: (context) => const LogReg_Screen(),
        Login_Screen.routeName: (context) => const Login_Screen(),
        Register_Screen.routeName: (context) => const Register_Screen(),
        OnBoard_Screen.routeName: (context) => const OnBoard_Screen(),
      },
    );
  }
}
