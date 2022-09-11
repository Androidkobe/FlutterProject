import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("This is text use"),
          ),
          body: ContentWidget(),
        ));
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text.rich(TextSpan(children: [
          TextSpan(text: "定风波"),
          TextSpan(text: "苏轼"),
          TextSpan(text: "\n一蓑烟雨任平生",style: TextStyle(color: Colors.red,fontSize: 39),)
        ]),
        textAlign:TextAlign.center,
        style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
