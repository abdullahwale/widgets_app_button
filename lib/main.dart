import 'package:flutter/material.dart';
import 'package:flutter/src/material/raised_button.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _string = "Abdullah";
  int num = 1;
  void _add() {
    setState(() {
      num++;
    });
  }

  void _sub() {
    setState(() {
      num--;
    });
  }

  void _onPressed() {
    setState(() {
      _string = "Greate Buttons!";
    });
  }

  void _onPressed2() {
    setState(() {
      _string = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              num.toString(),
            ),
            IconButton(
                color: Colors.lightGreenAccent,
                icon: Icon(Icons.add),
                onPressed: _add),
            IconButton(
                iconSize: 120,
                color: Colors.lightGreenAccent,
                icon: Icon(Icons.remove),
                onPressed: _sub),

            /*RaisedButton(
              //color: Colors.blue,
              onPressed: _onPressed,
              child: Text('Click me'),
            ),
            //FlatButton(
              //color: Colors.green,
              onPressed: _onPressed2,
              child: Text('Click me'),
            ),*/
          ],
        ),
      ),
    );
  }
}
