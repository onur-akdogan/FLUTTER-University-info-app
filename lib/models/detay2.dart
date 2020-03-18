import 'dart:convert';
import 'package:flutter/material.dart';

class MyBodyPage extends StatefulWidget {
  @override
  _MyBodyPageState createState() => _MyBodyPageState();
}

class _MyBodyPageState extends State<MyBodyPage> {
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return /* Padding(
              
              padding: const EdgeInsets.all(5.0), */
              Container(
            color: Colors.indigo,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 13),
              decoration: BoxDecoration(
                  border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.indigo.shade400,
                      width: 4),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.indigo, Colors.tealAccent])),
              height: 500,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      tumUniversiteler[index]["uniad"],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Divider(color: Colors.white),
                    ListTile(
                      title: Text(
                        "ÜNİVERSİTE SİTE:",
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: Text(
                        tumUniversiteler[index]["unisite"],
                        style: TextStyle(color: Colors.white, fontSize: 15.5),
                      ),
                      leading: Icon(
                        Icons.web,
                        color: Colors.red,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ÜNİVERSİTE MAİL:",
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: Text(
                        tumUniversiteler[index]["unimail"],
                        style: TextStyle(color: Colors.white, fontSize: 15.5),
                      ),
                      leading: Icon(Icons.mail_outline, color: Colors.yellow),
                    ),
                    ListTile(
                      title: Text(
                        "ÜNİVERSİTE TELEFON:",
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: Text(
                        tumUniversiteler[index]["unitel"],
                        style: TextStyle(color: Colors.white, fontSize: 15.5),
                      ),
                      leading: Icon(Icons.phone, color: Colors.blue),
                    ),
                    ListTile(
                      title: Text(
                        "ÜNİVERSİTE ADRESİ:",
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: Text(
                        tumUniversiteler[index]["uniadres"],
                        style: TextStyle(color: Colors.white, fontSize: 15.5),
                      ),
                      leading: Icon(Icons.add_location, color: Colors.orange),
                    ),
                    ListTile(
                      title: Text(
                        "ÜNİVERSİTE REKTÖRÜ:",
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: Text(
                        tumUniversiteler[index]["unirektor"],
                        style: TextStyle(color: Colors.white, fontSize: 15.5),
                      ),
                      leading: Icon(Icons.school, color: Colors.orange),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: tumUniversiteler.length,
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
