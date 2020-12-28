import 'package:componentes/scr/pages/alert_page.dart';
import 'package:componentes/scr/providers/menu_provider.dart';
import 'package:componentes/scr/utils/icono_string_util.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component'),
        ),
      body: _lista(),
    );
  }//Build

  //Creamos un método lista que va contener un Lisview:
  Widget _lista(){
   // print(menuProvider.opciones);
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ){ 

        return ListView(      
            children: _crearListaItem( snapshot.data, context ),
          );

       },
    );

  }
  List<Widget> _crearListaItem( List<dynamic> data, BuildContext context) {
      
      final List<Widget> opciones = [];

      data.forEach((opt) { 

          final widgetTemp = ListTile(
            title: Text( opt['texto'] ),
            leading: getIcon(opt['icon']),
            trailing: Icon(  Icons.keyboard_arrow_right, color: Colors.blue, ),
            onTap: () {


              Navigator.pushNamed(context, opt['ruta']);
              /* final route = MaterialPageRoute(
                builder: (context){
                  return AlertPage();
                },
              );
              //Click para navegar hacia otra page:
              Navigator.push(context, route); */
            },
          );

          opciones..add( widgetTemp )
                  ..add( Divider() );

      });
      return opciones;
    }
}