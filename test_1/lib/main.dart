import 'package:flutter/material.dart';
import 'generator.dart';


void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Color _color;

  _onChanged() {
    //update with a new color when the user taps button
    setState(() {
      _color = RandomGenerotor().changeColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: InkWell(
        onTap: _onChanged,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Text('Hey there'),
          ),
        ),
      ) 
    );
  }
}
