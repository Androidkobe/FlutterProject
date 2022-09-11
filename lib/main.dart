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
      children: [
        RaisedButton(
          textColor: Colors.red,
          color: Colors.amber,
          onPressed: () => {
            //按钮点击
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.people,color: Colors.white,size: 50,),
              SizedBox(width:10),
              Text("按钮")
            ],
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }
}
