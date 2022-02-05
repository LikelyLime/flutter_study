import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'drawer menu',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Mypage(),
    );

  }
}

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Drawer menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(onPressed: (){
            print('icon is clikc');
            }, icon: Icon(Icons.shopping_cart)),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search is click');
            },
          )
        ],
      ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/지식티비.001.jpeg'),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/롤스로이스.png'),
                //backgroundColor: Colors.red[200],
              )
            ],

            accountName: Text('Sihun'),
            accountEmail: Text('sihun9393@Gmail.com'),
            onDetailsPressed: (){
              print('button click');
            },

            decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Colors.grey[850],
            ),
            title: Text('Home'),
            onTap: (){
              print('home click');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.settings,
              color: Colors.grey[850],
            ),
            title: Text('Setting'),
            onTap: (){
              print('Setting click');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: Text('Q & A'),
            onTap: (){
              print('QA click');
            },
            trailing: Icon(Icons.add),
          )
        ],
      ),
    ),
    );
  }
}

