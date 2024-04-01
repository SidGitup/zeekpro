import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController emailC, passC, phoneC, nameC, insnameC, instaddC;

  @override
  void initState() {
    emailC = TextEditingController();
    passC = TextEditingController();
    phoneC = TextEditingController();
    nameC = TextEditingController();
    insnameC = TextEditingController();
    instaddC = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
    phoneC.dispose();
    nameC.dispose();
    insnameC.dispose();
    instaddC.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.asset(
              'asset/signupmap.png',
              //asset/log.png
              scale: 1.8,
            ),
            Center(
              child: Text(
                'Sign Up Please!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameC,
              decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: 'Name'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailC,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)),
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: phoneC,
              decoration: InputDecoration(
                hintText: 'enter your phone number',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)),
                labelText: 'Phone',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
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
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: insnameC,
              decoration: InputDecoration(
                  hintText: 'Institute Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: 'Enter your institute name'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: instaddC,
              decoration: InputDecoration(
                hintText: 'Enter your institute address',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)),
                labelText: 'Institute Address',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  FirebaseAuth auth = FirebaseAuth.instance;
                  UserCredential? userCredential =
                      await auth.createUserWithEmailAndPassword(
                          email: emailC.text.trim(),
                          password: passC.text.trim());

                  if (userCredential.user != null) {
                    FirebaseFirestore firebaseFirestore =
                        FirebaseFirestore.instance;
                    await firebaseFirestore
                        .collection('user')
                        .doc(userCredential.user!.uid)
                        .set({
                      'name': nameC.text.trim(),
                      'email': emailC.text.trim(),
                      'phone': phoneC.text.trim(),
                      'password': phoneC.text.trim(),
                      'inst name': insnameC.text.trim(),
                      'inst address': instaddC.text.trim(),
                      'photo': null, //dont write Null because Null is a type Null x = null;
                    });
                  }

                  Fluttertoast.showToast(msg: 'success', fontSize: 20);
                } on FirebaseAuthException catch (e) {
                  Fluttertoast.showToast(msg: e.message!);
                  print(e.toString());
                }

              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40)),
            ),
          ],
        ),
      ),
    );
  }
}
//practice it and dont use Null in firestore use null.