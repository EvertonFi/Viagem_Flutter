import 'package:flutter/material.dart';
import 'package:videosaulas/destinos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  blurRadius: 100,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset("assets/img/4.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200, left: 15),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: Colors.white
                  )
                )
              ),
              child: Text(
                'Lugares Incríveis',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  iconSize: 30,
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: IconButton(
                  iconSize: 30,
                  color: Colors.white,
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: ListView(
              padding: const EdgeInsets.only(left: 10, right: 10),
              children: <Widget>[
                Destino(
                  descricao: 'Venha conhecer esse lugar incrivel',
                  img: 'assets/img/1.jpg',
                  nome: 'Londres',
                ),
                Destino(
                  descricao: 'Venha conhecer esse lugar incrivel',
                  img: 'assets/img/5.jpg',
                  nome: 'Orlando',
                ),
                Destino(
                  descricao: 'Venha conhecer esse lugar incrivel',
                  img: 'assets/img/3.jpg',
                  nome: 'Recife',
                ),
                Destino(
                  descricao: 'Venha conhecer esse lugar incrivel',
                  img: 'assets/img/4.jpg',
                  nome: 'Salvador',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
