import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello'),
            Text('Hello')
            ,Text('Hello')
          ],
        ),
      ),
    );
  }
}
