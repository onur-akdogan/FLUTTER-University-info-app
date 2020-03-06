import 'package:flutter/material.dart';

import 'models/uniInfoList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Üniversite Bilgi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
       
      ),
      home: MyHomePage(),
    );
  }
}

