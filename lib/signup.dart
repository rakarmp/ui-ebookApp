import 'package:flutter/material.dart';
import 'package:elib/login.dart';

void main() => runApp(SignUp());


class SignUp extends StatelessWidget {
 // This widget is the root of your application.
 @override
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
                  labelText: 'Email',
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
           SizedBox(height: 20,),
           MaterialButton(
             padding: EdgeInsets.all(20),
             minWidth: 250,
             child: Text("SignUp", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
             color: Colors.blue,
             onPressed: (){},
           ),
           TextButton(
             child: Text("Have Account? Login", style: TextStyle(color: Colors.blue)),
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
           )
         ],
       ),
     ),
   );
 }
}