import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeekpro/screens/ins_profile_screen.dart';
import 'package:zeekpro/screens/parent_zone_screen.dart';

class Dash_board extends StatefulWidget {
  const Dash_board({super.key});

  @override
  State<Dash_board> createState() => _Dash_boardState();
}

class _Dash_boardState extends State<Dash_board> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 60),
              child: Text(
                'Welcome to',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Text(
              'WATCHFUL EYE',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Image.asset('asset/loginas.png'),
            const Text(
              'Choose your login option!', style: TextStyle(fontSize: 20),),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>ParentZoneScreen()));
                    },
                    child: Text(
                      'Parent',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30)),
                  ),
                ),

                const SizedBox(width: 10,),

                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => InsProfileScreen()));
                      },
                      child: Text(
                        'Institute',
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
