import 'package:flutter/material.dart';
import 'package:shoppingshop/commonWidgets/DynamicTable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: DynamicTable(
        data: [
          {
            'Name': 'John',
            'Age': '25',
            'Country': 'USA',
            "ageda": "m",
            "量": "m"
          },
          {
            'Name': 'Ana',
            'Age': '23',
            'Country': 'Brazil',
            "ageda": "m",
            "量": "m"
          },
          // Add more data maps here
        ],
      ),
    );
  }
}
