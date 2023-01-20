import 'package:flutter/material.dart';
import 'package:proyecto2023chipu/pantalla_login.dart';


class pantalla_menu extends StatefulWidget {
  const pantalla_menu({super.key});

  @override
  State<pantalla_menu> createState() => _pantalla_menuState();
}

class _pantalla_menuState extends State<pantalla_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    '../assets/luffyg5.png',
                    width: 100,
                  ),
                  Text("kap.sani@yavirac.edu.ec")
                ],
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.perm_identity_outlined),
              title: Text('Cerrar Sesion'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pantalla_login()));
              },
            ),
            ListTile(
              leading: Icon(Icons.whatsapp),
              title: Text('WhatsApp'),
            ),
            ListTile(
              leading: Icon(Icons.youtube_searched_for),
              title: Text('Instagram'),
            ),
            ListTile(
              leading: Icon(Icons.face_outlined),
              title: Text('Twitter'),
            ),
          ],
        ),
      ),
    );
  }
}
