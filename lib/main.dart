import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool myCheck = false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
          child: Column(children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.list,
                  color: Colors.lightBlueAccent,
                )),
            Text('Todoey'),
            Text('12 Tasks'),
            ListTile(
              title: Text(
                  'This is a task',
                      style: TextStyle(
                          decoration: myCheck? TextDecoration.lineThrough:null,
              ),
              ),
              trailing: Checkbox(
                activeColor: Colors.red,
                value: myCheck,
                onChanged: (newCheck) {
                  setState(() {
                    myCheck = !myCheck;
                    print (myCheck);
                  });
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
