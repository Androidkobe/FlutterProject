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
        )
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "《定风波》苏轼 \n莫听穿林打叶声，何妨吟啸且徐行 \n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生",
          style: TextStyle(
            color: Color(0xffff0000),
            fontSize: 20,
            textBaseline: TextBaseline.ideographic,
            fontStyle: FontStyle.italic,
            fontFamily: "af",
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          "《定风波》苏轼 \n莫听穿林打叶声，何妨吟啸且徐行,竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生",
          style: TextStyle(
            color: Color(0xffff0000),
            fontSize: 20,
            textBaseline: TextBaseline.ideographic,
            fontFamily: "af",
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

}