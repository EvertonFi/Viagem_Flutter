import 'package:flutter/material.dart';

class Destino extends StatefulWidget {

  final String nome;
  final String descricao;
  final String img;

  const Destino({Key key, this.nome, this.descricao, this.img}) : super(key: key);


  @override
  _DestinoState createState() => _DestinoState();
}

class _DestinoState extends State<Destino> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        height: 200,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.img,
                  width: 150,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width - 186,
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          widget.nome,
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.descricao,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
