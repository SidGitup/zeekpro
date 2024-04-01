import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zeekpro/screens/SplashScreen.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyCE51lG47vOoBfTVMCptySljktGy8_TRcE',
          appId: '1:413238500304:android:bef3956f31c659b23ff7d5',
          messagingSenderId: '413238500304',
          projectId: 'my-portfolio-eed11',
          storageBucket: 'my-portfolio-eed11.appspot.com'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Child Location Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Start with the splash screen
    );
  }
}
