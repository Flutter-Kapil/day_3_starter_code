import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text(
          'Kapil Jhajhria',
        ),
      ),
      body: Center(
        child: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/kapil.jpg'),
              ),
            ),
            Text(
              "kapil Jhajhria",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LobsterTwo-Regular'),
            ),
            Text(
              'Student',
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 10.0,
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              elevation: 20.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.call),
                  title: Text(
                    '9812345678',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.content_copy),
                    onPressed: copyPressed,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              elevation: 20.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    'kapil@gmail.com',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void copyPressed() {
  print('copy content pressed');
}

//Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//children: <Widget>[Icon(Icons.call), Text('9812345678')],
//),
