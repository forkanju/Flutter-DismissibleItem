import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Dismissible Item'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selected = "Choose";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Dismissible(
          key: ValueKey("abc"),
          secondaryBackground: Container(
            color: Colors.blue,
            child: Icon(
              Icons.delete,
              size: 40,
            ),
          ),
          background: Container(
            color: Colors.deepOrange,
            child: Icon(
              Icons.delete,
              size: 40,
            ),
          ),
          child: ListTile(
            title: Text("Jahangirnagar University"),
            subtitle: Text("My second home is Jahangirnagar University"),
            trailing: Icon(Icons.ac_unit),
          ),
        ),
      ),
    );
  }
}
