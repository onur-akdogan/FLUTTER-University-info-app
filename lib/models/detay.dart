

import 'package:flutter/material.dart';
import 'uniInfoList.dart';
class UniDetay extends StatefulWidget {
  @override
  _UniDetayState createState() => _UniDetayState();
}

class _UniDetayState extends State<UniDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("uniad")),
        body: Container(child: Center(child:Text("üniveriste bilgisi",style: TextStyle(fontSize: 48,color:Colors.indigo),)),),
      );
    
    
  }
}