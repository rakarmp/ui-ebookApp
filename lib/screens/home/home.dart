import 'package:flutter/material.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.network(
                'https://miro.medium.com/max/1400/1*AuT0GXEd7j21RI6uXlxYTQ.png'),
            const ListTile(
              title: Text('Programmer PHP'),
              subtitle: Text('Books By People'),
            ),
          ],
        ),
      ),
    );
    return Center(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.network(
                'https://miro.medium.com/max/1400/1*AuT0GXEd7j21RI6uXlxYTQ.png'),
            const ListTile(
              title: Text('Programmer PHP'),
              subtitle: Text('Books By People'),
            ),
          ],
        ),
      ),
    );
  }
}
