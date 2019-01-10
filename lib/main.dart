import 'package:business_card/widgets.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Anatoliy Dvoryashin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final leftSection = new Container();
  final middleSection = new Container();

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final bool isLandscape = orientation == Orientation.landscape;
    return Scaffold(
      primary: !isLandscape,
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? verticalLayout()
              : horizontalLayout();
        },
      ),
    );
  }

  Column verticalLayout() {
    return new Column(
      children: <Widget>[
        Link(),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 00.0, 0.0),
        ),
        Linetext(),
        Mytext(),
        Linetext(),
        TextInput(),
        Button(),
        LocationIcons(
          icons: null,
        ),
        IconsLoc()
      ],
    );
  }

  Container horizontalLayout() {
    return new Container(
      child: Container(child: Row(children: <Widget>[Link2(),Expanded(child: Column(
        children: <Widget>[
          Mytext(),TextInput(),Button(),LocationIcons(
          icons: null,
        ),
        IconsLoc()
        ],
      ))],),
      ),);
       
    }
}
