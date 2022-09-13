import 'package:elib/screens/profile/profile_screen.dart';
import 'package:elib/screens/auth/forgot.dart';
import 'package:elib/screens/auth/signup.dart';
import 'package:elib/screens/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/image/splash.png'
                  // height : 300,
                  // width: 200,
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input Username',
                  labelText: 'User Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'username cannot be empty';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input Password',
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password cannot be empty';
                  }
                  return null;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Forgot()));
              },
              child: const Text(
                'Forgot Password ?',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 250,
              color: Colors.blue,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }
              },
            ),
            TextButton(
              child: Text(
                "Not a member? Signup now",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
