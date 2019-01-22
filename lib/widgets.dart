import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Icon Instagram
class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage_1 = new AssetImage('res/image/instagram.png');

    var image_1 = new Image(
      image: assetsImage_1,
      height: 32.0,
      width: 32.0,
    );
    return new Container(
      child: new FlatButton(
          onPressed: () => launch('https://is.gd/sJjWcr'), child: image_1),
    );
  }
}

//Icon Telegram
class Telegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage2 = new AssetImage('res/image/telegram.png');
    var image_2 = new Image(
      image: assetsImage2,
      height: 32.0,
      width: 32.0,
    );
    return new Container(
      child: new FlatButton(
        onPressed: () => launch('https://t.me/Exzhnik'),
        child: image_2,
        padding: EdgeInsets.all(0),
      ),
    );
  }
}

//Icon Phone
class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage_3 = new AssetImage('res/image/phone.png');
    var image_3 = new Image(
      image: assetsImage_3,
      height: 32.0,
      width: 32.0,
    );
    return new Container(
      child: new FlatButton(
        onPressed: () => launch("tel://+79064028160"),
        child: image_3,
      ),
    );
  }
}

//My Foto Vertical Layout
class Link extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage_4 = new AssetImage('res/image/1.jpeg');
    var image_4 = new Image(
      image: assetsImage_4,

      // width: 720.0,
      //     height: 0.0,
    );
    return new Container(alignment: Alignment.topLeft, child: image_4);
  }
}

//My Foto Horizontal Layout
class Link2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage_4 = new AssetImage('res/image/1_2.jpeg');
    var image_4 = new Image(
      image: assetsImage_4,
//      width: 150.0,
      height: 360.0,
    );
    return new Container(child: image_4);
  }
}

//About me
class Mytext extends StatelessWidget {
  const Mytext({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            """
I am a beginner Android Developer.
At 31, I decided to change the field 
of activity. In my daily schedule
I allocate time to learn a new profession
""",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.cyan,
            ),
          ),
        ),
      ],
    );
  }
}

class IconsLoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: new Instagram(),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: new Telegram(),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: new Phone(),
            ),
          ],
        ),
      ],
    );
  }
}

class LocationIcons extends StatelessWidget {
  const LocationIcons({
    Key key,
    @required this.icons,
  }) : super(key: key);

  final Row icons;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: icons,
          ),
        ],
      ),
    );
  }
}

class EndIcons extends StatelessWidget {
  const EndIcons({
    Key key,
    @required this.icons,
  }) : super(key: key);

  final Row icons;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: icons,
          ),
        ],
      ),
    );
  }
}

class FotoOrent extends StatelessWidget {
  const FotoOrent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        Orientation orientation = MediaQuery.of(context).orientation;
        return orientation == Orientation.portrait ? Link() : Link2();
      },
    );
  }
}

class Linetext extends StatelessWidget {
  const Linetext({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
      child: new Container(
        height: 1.5,
        color: Colors.black,
      ),
    );
  }
}

class TextSend extends StatelessWidget {
  const TextSend({
    Key key,
    @required this.message,
  }) : super(key: key);

  final TextEditingController message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: new TextField(
        controller: message,
        decoration: new InputDecoration(
            hintStyle: new TextStyle(color: Colors.cyan, fontSize: 20.0),
            contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 2.0),
            hintText: 'Message'),
      ),
    );
  }
}

class ButtonNew extends StatelessWidget {
  const ButtonNew({
    Key key,
    @required this.message,
  }) : super(key: key);

  final TextEditingController message;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.topRight,
      padding: EdgeInsets.all(10.0),
      child: new RaisedButton(
          child: Text('Send'),
          color: Theme.of(context).accentColor,
          elevation: 4.0,
          splashColor: Colors.deepPurpleAccent,
          onPressed: () => launch(
              'mailto:exzhnik@gmail.com?subject=Job&body=${message.text}'),
          content: Text(message.text)),
    );
  }
}
