import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/src/pages/about_page.dart';
import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/grid_gradient_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent));
    } else if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => _mainMenu(context),
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'grid-gradient': (BuildContext context) => GridGradientPage(),
        'about': (BuildContext context) => AboutPage(),
      },
    );
  }

  Widget _mainMenu(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Flutter Designs'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(
                Icons.more_horiz,
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 'about',
                    child: Text('About'),
                  ),
                ];
              },
              onSelected: (result) {
                switch (result) {
                  case 'about':
                    Navigator.pushNamed(context, 'about');
                    break;
                }
              },
            ),
          ]),
      body: ListView(
        children: <Widget>[
          _listItem(context, 'Basic Design', 'basic'),
          _listItem(context, 'Scroll Design', 'scroll'),
          _listItem(context, 'Grid Gradient Design', 'grid-gradient'),
        ],
      ),
    );
  }

  Widget _listItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
