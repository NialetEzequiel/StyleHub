import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
            ],
          ),
        ),

        //Menu Lateral
        drawer: Drawer(

        ),
      ),
    ); //MaterialApp
  }
}

