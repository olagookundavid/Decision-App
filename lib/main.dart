import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Decision App'),
            backgroundColor: Colors.orange,
          ),
          backgroundColor: Colors.orange.shade200,
          body: const MyApp(),
        ),
      ),
    );


class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(child: TextButton(onPressed: () { 
      setState(() {
        ballno = Random().nextInt(5) + 1;
      });
     },
    child: Image.asset('images/ball$ballno.png')));
  }
}