import 'dart:convert';
import 'package:flutter/material.dart';
import 'detay.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List tumUniversiteler;
  @override
  void initState() {
    super.initState();
    veriKaynagi().then((okulListesi) {
      setState(() {
        tumUniversiteler = okulListesi;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Üniversiteler"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
                
              ),
              child: Text(
                'ÜNİVERSİTE BİLGİLERİ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),textAlign: TextAlign.center,
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.school),
              title: Text('TÜRKİYEDEKİ TÜM ÜNİVERSİTELER'),
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Uygulama İçeriği'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Universite İsmi'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Universite Site'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Universite Mail'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Universite Fax'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Universite Rektörü'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Universite Adress'),
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('ONUR AKDOĞAN'),
              subtitle: Text("Mobil DEVELOPER"),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(padding: EdgeInsets.only(left: 15,right: 15,bottom: 16),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tumUniversiteler[index]["uniad"]),
              leading: Icon(Icons.school),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UniDetay()),
                );
              },
            );
          },
          itemCount: tumUniversiteler.length,
        ),
      ),
    );
  }

  Future<List> veriKaynagi() async {
    var jsonOku =
        await DefaultAssetBundle.of(context).loadString("assets/data/uni.json");
    List okulListesi = json.decode(jsonOku.toString());
    return okulListesi;
  }
}
