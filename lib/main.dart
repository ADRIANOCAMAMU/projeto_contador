import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_contador/controler.dart';

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
  final controler = ContadorControler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
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
              controler.getContador(),
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
            child: OperationFloatingActionButton(Icon(Icons.add), () {
              setState(() {
                controler.incrementarContador();
              });
            }),
          ),
          Positioned(
              bottom: 10.0,
              height: 50.0,
              right: 70.0,
              child: OperationFloatingActionButton(Icon(Icons.remove), () {
                setState(() {
                  controler.decrementarContador();
                });
              }))
        ],
      ),
    );
  }
}

class OperationFloatingActionButton extends StatelessWidget {
  final Function func;
  final Widget icon;

  OperationFloatingActionButton(this.icon, this.func, {Key key})
      : super(key: key);

  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: func,
      child: icon,
    );
  }
}
