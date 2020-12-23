import 'package:flutter/material.dart';

final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        ),
      body: ListView(
        children: _crearItems()
      //children: _crearItemsCorta()
      ),
    );
  }
  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones){
      final tempWidget = ListTile(
          title: Text(opt),
          subtitle: Text('Hola Mundo'),
          leading: Icon( Icons.account_box_rounded),
          trailing: Icon( Icons.keyboard_arrow_right),
      );
      lista.add( tempWidget );
      lista.add( Divider() );
      }//for
      return lista;
  }//_crearItems()

  List<Widget> _crearItemsCorta() {

    return opciones.map( (item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!' ),
            subtitle: Text('Cualquier cosa'),
            leading: Icon( Icons.account_balance_wallet ),
            trailing: Icon( Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
    );

    }).toList();  
  }
}