import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _imageSection(),
          _titleSection(),
          _actionsSection(),
          _textSection(),
          // _textSection(),
          // _textSection(),
          // _textSection(),
          // _textSection(),
          // _textSection(),
          // _textSection(),
          // _textSection(),
          // _textSection(),
        ]),
      ),
    );
  }

  Widget _imageSection() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://i.pinimg.com/originals/9b/c7/67/9bc767ae3dbb75cbb6ae436add4bb0b4.jpg'),
        height: 280.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _titleSection() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'The Shire',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Home of many Hobbits',
                    style: subtitleStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0)),
          ],
        ),
      ),
    );
  }

  Widget _actionsSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _actionButton('Call', Icons.call),
        _actionButton('Route', Icons.near_me),
        _actionButton('Share', Icons.share),
      ],
    );
  }

  Widget _actionButton(String text, IconData icon) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(text,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15.0,
            )),
      ],
    );
  }

  Widget _textSection() {
    final text =
        "The Shire is a region of J. R. R. Tolkien's fictional Middle-earth, described in The Lord of the Rings and other works. The Shire is an inland area settled exclusively by Hobbits, the Shire-folk, and largely removed from the goings-on in the rest of Middle-earth. It is in the northwest of the continent, in the region of Eriador and the Kingdom of Arnor.\n\n The Shire is the scene of action at the beginning and end of Tolkien's The Hobbit, and in the sequel, The Lord of the Rings. Five of the protagonists in these stories have their homeland in the Shire: Bilbo Baggins (the titular character of The Hobbit), and four members of the Fellowship of the Ring: Frodo Baggins, Sam Gamgee, Merry Brandybuck and Pippin Took. The main action in The Lord of the Rings returns to the Shire near the end of the book, in \"The Scouring of the Shire\", when the homebound hobbits find the area under the control of Saruman's ruffians, and set things to rights.\n\n Tolkien based the Shire's landscapes, climate, flora and fauna on rural England where he lived, first in Worcestershire as a boy, then in Oxfordshire. In Peter Jackson's films of both The Hobbit and The Lord of the Rings, the Shire was represented by countryside and constructed hobbit-holes at Matamata, New Zealand, which became a tourist destination.";
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 20.0,
        ),
        child: Text(
          text,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
