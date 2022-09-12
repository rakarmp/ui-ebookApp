import 'package:flutter/material.dart';

void main() => runApp(Profile());
class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ClipOval(
                      child: Image.asset(
                        'img/pp.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Al Katiri',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 12, 12, 12),
                    ),
                  ),
                  Text(
                    'Student',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 17, 17),
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Nama',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Alkatiri',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Alamat',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Bandung',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Tempat Lahir',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Bandung',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Tanggal Lahir',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '08-12-04',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Agama',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Islam',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Nomor Telpon',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '+62-878-774-652-93',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Nomor Rek',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '1029318189',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
        debugShowCheckedModeBanner: false,
    );
  }
}