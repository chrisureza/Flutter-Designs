import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class GridGradientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _appBackground(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _roundedButtons(),
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(             This bottomNavigationBar Works but can't have custom styles
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today),
      //       title: Container(),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.pie_chart_outlined),
      //       title: Container(),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.supervised_user_circle),
      //       title: Container(),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  _appBackground() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final floatingBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 340.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ]),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -60.0,
          left: -20.0,
          child: floatingBox,
        ),
      ],
    );
  }

  _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Color.fromRGBO(116, 117, 152, 1.0),
              ),
            ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
              size: 30.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 30.0,
            ),
            title: Container(),
          ),
        ],
      ),
    );
  }

  _roundedButtons() {
    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _roundedButtonItem(Colors.blue, Icons.mail, 'Mail'),
            _roundedButtonItem(
                Colors.purpleAccent, Icons.directions_boat, 'Boat'),
          ],
        ),
        TableRow(
          children: [
            _roundedButtonItem(Colors.green[600], Icons.phone_in_talk, 'Phone'),
            _roundedButtonItem(Colors.red, Icons.phone_locked, 'Locked'),
          ],
        ),
        TableRow(
          children: [
            _roundedButtonItem(Colors.orange, Icons.image, 'Photos'),
            _roundedButtonItem(Colors.lime[900], Icons.photo_camera, 'Camera'),
          ],
        ),
        TableRow(
          children: [
            _roundedButtonItem(Colors.cyan[800], Icons.file_upload, 'Uplodad'),
            _roundedButtonItem(
                Colors.lime[700], Icons.file_download, 'Downlodad'),
          ],
        ),
      ],
    );
  }
}

_roundedButtonItem(Color color, IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          // margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0),
              CircleAvatar(
                radius: 35.0,
                backgroundColor: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    color: color, fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    ),
  );
}
