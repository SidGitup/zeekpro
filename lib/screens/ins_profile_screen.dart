import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeekpro/screens/sign_up_screen.dart';

class InsProfileScreen extends StatefulWidget {
  const InsProfileScreen({super.key});

  @override
  State<InsProfileScreen> createState() => _InsProfileScreenState();
}

class _InsProfileScreenState extends State<InsProfileScreen> {

  late TextEditingController emailC,passC;

  @override
  void initState() {
    emailC = TextEditingController();
    passC = TextEditingController();

    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
    // TODO: implement dispose
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 60),
                alignment: Alignment.center,
                child: Image.asset(
                  'asset/log.png',
                  //asset/signupmap.png
                  scale: 2.5,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Login Please!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: emailC,
                decoration: InputDecoration(
                    hintText: 'enter your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Email'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: passC,
                decoration: InputDecoration(
                  hintText: 'enter your Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: 'Password',
                  suffix: Icon(Icons.visibility),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
              //style: ElevatedButton.styleFrom(
                //  padding: EdgeInsets.symmetric(horizontal: 40)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not Register'),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    },
                    child: Text('Register now')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
