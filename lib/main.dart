import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'scroll',
      routes: {
        'basic': (BuildContext context) => Basicpage(),
        'scroll': (BuildContext context) => ScrollPage(),
      },
    );
  }
}
