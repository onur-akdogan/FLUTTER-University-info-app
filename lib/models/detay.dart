import 'package:flutter/material.dart';
import 'detay2.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List tumUniversiteler;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Üniversiteler", style: TextStyle(color: Colors.white)),
        elevation: 10,
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                'ÜNİVERSİTE BİLGİLERİ',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
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
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Universite İsmi'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Universite Site'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Universite Mail'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Universite Rektörü'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Universite Adress'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.red,
              ),
              title: Text('ONUR AKDOĞAN',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w900,
                      fontSize: 17)),
              subtitle: Text(
                "Mobil DEVELOPER",
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('İNSTAGRAM=develosoft'),
            ),
            ListTile(
              leading: Icon(Icons.alternate_email),
              title: Text('E-MAİL:'),
              subtitle: Text(
                " onurakdogan0@outlook.com",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      
      body: MyBodyPage(),
    );
  }
}
