import 'package:elibmobile/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:elibmobile/themes.dart';

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
                'assets/splash/splash.png',
                // height : 300,
                // width: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
             Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextFormField(
             obscureText: true,
          decoration: InputDecoration(
            hintText: 'Kata Sandi Sebelumnya',
            hintStyle: mediumText12.copyWith(color: greyColor),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          validator: (value) {
                  if (value!.isEmpty) {
                    return 'Kata Sandi tidak boleh kosong';
                  }
                   if (value.length < 8) {
        return 'Kata Sandi minimal 8 karakter ';
      }
                  return null;
                },
        )
             ),
            SizedBox(
              height: 10,
            ),
             Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextFormField(
             obscureText: true,
          decoration: InputDecoration(
            hintText: 'Kata Sandi Baru',
            hintStyle: mediumText12.copyWith(color: greyColor),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          validator: (value) {
                  if (value!.isEmpty) {
                    return 'Kata Sandi tidak boleh kosong';
                  }
                   if (value.length < 8) {
        return 'Kata Sandi minimal 8 karakter ';
      }
                  return null;
                },
        )
             ),
            SizedBox(
              height: 10,
            ),
             Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextFormField(
             obscureText: true,
          decoration: InputDecoration(
            hintText: 'Konfirmasi Kata Sandi',
            hintStyle: mediumText12.copyWith(color: greyColor),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          validator: (value) {
                  if (value!.isEmpty) {
                    return 'Kata Sandi tidak boleh kosong';
                  }
                   if (value.length < 8) {
        return 'Kata Sandi minimal 8 karakter ';
      }
                  return null;
                },
        )
             ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 250,
              child: Text(
                "Confirm",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.blue,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
