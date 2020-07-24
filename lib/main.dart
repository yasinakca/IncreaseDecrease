import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increase and Downcrease App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Increase",style: TextStyle(color: Colors.white),),
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              Text(
                "The counter is: $counter ",
                style: TextStyle(color: buildTextColor(counter),fontSize: 24),
              ),
              RaisedButton(
                child: Text("Decrease",style: TextStyle(color: Colors.white),),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  buildTextColor(int counter) {
    if (counter > 0) {
      return Colors.green;
    }else if(counter < 0) {
      return Colors.red;
    }else {
      return Colors.black;
    }
  }
}
