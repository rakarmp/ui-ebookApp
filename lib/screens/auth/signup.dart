import 'package:elib/screens/auth/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/image/splash.png',
                // height : 300,
                // width: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username cannot be empty';
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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email cannot be empty';
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
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 250,
              child: Text(
                "SignUp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.blue,
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
            TextButton(
              child: Text("Have Account? Login",
                  style: TextStyle(color: Colors.blue)),
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
