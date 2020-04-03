import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _page1(),
            _page2(),
          ],
        ),
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _page1Content(),
      ],
    );
  }

  Widget _page2() {
    return Center(
      child: Stack(
        children: <Widget>[
          _backgroundColor(),
          _page2Content(),
        ],
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/imgs/scroll-page-background.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _page1Content() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Wednesday',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _page2Content() {
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blue,
        textColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
