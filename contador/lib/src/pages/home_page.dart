


import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final stiloTexto = new TextStyle( fontSize: 25 );
  final int conteo = 10;

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('titulo'),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de clicks', style: stiloTexto),
          Text('$conteo', style: TextStyle( fontSize: 25 )),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // conteo = conteo +1
        },
        child: Icon( Icons.add),
      ),
      
  );
}
}