import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentZoneScreen extends StatefulWidget {
  const ParentZoneScreen({super.key});

  @override
  State<ParentZoneScreen> createState() => _ParentZoneScreenState();
}
class _ParentZoneScreenState extends State<ParentZoneScreen> {

  late TextEditingController childIDC;

  @override

  void initState(){
    childIDC = TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    childIDC.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
           Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset('asset/parentz.png',scale: 2.5,),
              ),
              SizedBox(
                height: 50,
              ),
            Center(
              child: Text(
                'Welcome to Parent Zone!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

             /** Center(
                child: Text(
                  'to',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Parent Zone!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),**/

              SizedBox(
                height: 30,
              ),
              TextField(
                controller: childIDC,
                decoration: InputDecoration
                  (
                  hintText: 'Child Id',
                  label: Text('Child Id'),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),

              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 141),
              ), child: Text(
                'Track Child'
              ))

              ]
          ),
            ]
        ),
      ),

    );
  }
}
