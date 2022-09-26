import 'package:elibmobile/configs/api_services.dart';
import 'package:elibmobile/screens/home/home.dart';
import 'package:elibmobile/page/profile_page.dart';
import 'package:elibmobile/screens/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elibmobile/screens/auth/signup.dart';
import 'package:elibmobile/screens/auth/forgot.dart';
import 'package:elibmobile/themes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ApiService apiService = ApiService();
  final _formKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();
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
              child: Image.asset('assets/splash/splash.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@') ||
                        !value.contains('.')) {
                      return 'Email Salah';
                    }
                    return null;
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Kata Sandi',
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
                )),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Forgot()));
              },
              child: const Text('Lupa Sandi ?'),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 240,
              color: Colors.blue,
              child: Text(
                "Masuk",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) =>
                  //     ));
                  dynamic dataRespone =
                      await apiService.login(username.text, password.text);
                  if (dataRespone == 200) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                  print(dataRespone);
                }
              },
            ),
            TextButton(
              child: Text(
                "Belum Punya Akun? Daftar",
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
