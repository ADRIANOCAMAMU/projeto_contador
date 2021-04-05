import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: TelaContador(),
    ),
  );
}

class TelaContador extends StatefulWidget {
  @override
  _TelaContadorState createState() => _TelaContadorState();
}

class _TelaContadorState extends State<TelaContador> {
  var resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Você pressionou o botão',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10.0,
            height: 50.0,
            right: 10.0,
            child: FloatingActionButton(
              onPressed: () {
                print('Botao Pressionado');
                setState(() {
                  resultado += 1;
                });
              },
              child: Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 10.0,
            height: 50.0,
            right: 70.0,
            child: FloatingActionButton(
              onPressed: () {
                print('Botao Pressionado');
                setState(() {
                  resultado -= 1;
                });
              },
              child: Icon(Icons.remove),
            ),
          )
        ],
      ),
    );
  }
}
