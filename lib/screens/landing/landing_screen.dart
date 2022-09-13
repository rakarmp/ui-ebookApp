import 'package:elib/screens/auth/login.dart';
import 'package:elib/screens/auth/signup.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.android,
              color: Colors.blue,
              size: 45,
            ),
            SizedBox(
              height: 200,
            ),
            Text("Welcome to ELibrary",
                style: TextStyle(color: Colors.blue, fontSize: 22)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Get real-time updates about what",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            Text(
              "maters to you",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 260,
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                "SignUp",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 260,
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}
