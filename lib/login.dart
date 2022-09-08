import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elib/signup.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Container(
             padding: EdgeInsets.all(10),
             child: TextFormField(
               decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
           ),
           ),
           SizedBox(height: 10,),
           Container(
             padding: EdgeInsets.all(10),
             child: TextFormField(
               decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
             ),
           ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password ?',),
            ),
           SizedBox(height: 20,),
           MaterialButton(
             padding: EdgeInsets.all(20),
             minWidth: 250,
             color: Colors.blue,
             child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
             onPressed: () {

             },
           ),
           TextButton(
             child: Text("Not a member? Signup now",
               style: TextStyle(color: Colors.blue),),
             onPressed: () {
               Navigator.push(
                   context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           )
         ],
       ),
     ),
   );
 }
}