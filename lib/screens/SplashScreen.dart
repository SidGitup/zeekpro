import 'dart:async';
import 'package:zeekpro/screens/dashboard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Timer(Duration(seconds: 3), () {
      
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dash_board() ));
      
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       // crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Text('WATCHFUL EYE',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),

          SizedBox(height: 150,),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Transform.scale(
                scale: 2.0,
                  child: Image.asset('asset/try.png',height: 200,width: 200,)),
            ),
          ),

          SizedBox(height: 150,),

          Text('Loading...',style: TextStyle(fontSize: 24),),
        ],
      ),

    );
  }
}
