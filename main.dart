import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salman Ahmed"),
        backgroundColor: Colors.green,
      ),
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Table",
            textScaleFactor: 2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            children: const [
              TableRow(children: [
                Text(
                  "Education",
                  textScaleFactor: 1.5,
                ),
                Text("Institution name", textScaleFactor: 1.5),
                Text("University", textScaleFactor: 1.5),
              ]),
              TableRow(children: [
                Text("B.Tech", textScaleFactor: 1.5),
                Text("ABESEC", textScaleFactor: 1.5),
                Text("AKTU", textScaleFactor: 1.5),
              ]),
              TableRow(children: [
                Text("12th", textScaleFactor: 1.5),
                Text("Delhi Public School", textScaleFactor: 1.5),
                Text("CBSE", textScaleFactor: 1.5),
              ]),
              TableRow(children: [
                Text("High School", textScaleFactor: 1.5),
                Text("SFS", textScaleFactor: 1.5),
                Text("ICSE", textScaleFactor: 1.5),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
