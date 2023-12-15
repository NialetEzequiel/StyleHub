import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
  sqlconnect();
}
// MyApp es el widget raíz de tu aplicación.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StyleHub',
      home: Scaffold(
        appBar: AppBar(title: Text("StyleHub")
          ,),
        //Cuerpo App
        body: Center(
          child: Column(
            children: [
              SizedBox(
                //height: 250,
                //width: 350,
                child: Image.network('https://wallpapers.com/images/high/vogue-street-style-mens-fashion-dsfji3119irooc02.webp'
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                    child: Center(
                    child: Text("INICIO", textAlign: TextAlign.center)),
                      width: 100,
                    ),
                    Container(
                      child: Center(
                          child: Text("OFERTAS", textAlign: TextAlign.center)),
                      width: 100,
                    ),
                    Container(
                      child: Center(
                          child: Text("TENDENCIAS", textAlign: TextAlign.center)),
                      width: 100,
                    ),
                    Container(
                      child: Center(
                          child: Text("PARA TI", textAlign: TextAlign.center)),
                      width: 100,
                    ),
                  ],
                ),
              ),
/*              GridView.count(
                crossAxisCount: 2,
                children: [

                ],
              )*/
            ],
          ),
        ),

        //Menu Lateral
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Usuario'),
                ),
                ListTile(
                  title: const Text('Mi Cuenta'),
                  onTap: () {
                    // Actualizar el estado
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Mis Pedidos'),
                  onTap: () {
                    // Actualizar el estado
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Contacto'),
                  onTap: () {
                    // Actualizar el estado
                    // ...
                  },
                ),
              ],
          )
        ),
      ),
    ); //MaterialApp
  }
}
Future sqlconnect() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'DESKTOP-85JNSLU',
      port: 3306,
      user: 'root',
      db: 'SyleHub',
      password: 'root'));

  // Query the database using a parameterized query
  var results = await conn.query(
      'select Id, producto from Prueba');
  for (var row in results) {
    print('Id ${row[0]}, producto ${row[1]}');
  }

  // Finally, close the connection
  await conn.close();
}

