import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
                child: FlatButton(
              child: Text(
                "Show Me",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                Scaffold.of(ctx).showSnackBar(SnackBar(
                  content: Text('Hellow'),
                ));
              },
            ));
          },
        ));
  }
}
