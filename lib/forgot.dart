import 'package:flutter/material.dart';
import 'package:elib/login.dart';

void main() => runApp(Forgot());


class Forgot extends StatelessWidget {
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
                'img/ELibrary.png',
                // height : 300,
                // width: 200,
            ),
          ),
           SizedBox(height: 10,),
           Container(
             padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
               decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Old Password',
                ),
                 validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password cannot be empty';
                  }
                  return null;
                },
             ),
           ),
           Container(
             padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
               decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                ),
                 validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password cannot be empty';
                  }
                  return null;
                },
             ),
           ),
           Container(
             padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
               decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
                 validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password cannot be empty';
                  }
                  return null;
                },
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             padding: EdgeInsets.all(20),
             minWidth: 250,
             child: Text("Confirm", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
             color: Colors.blue,
             onPressed: (){
               if (_formKey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             }
             },
           ),
         ],
       ),
     ),
   );
 }
}