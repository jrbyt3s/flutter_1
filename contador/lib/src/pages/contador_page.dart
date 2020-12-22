import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  createState() =>  _ContadorPageState();
  


}

class _ContadorPageState extends State<ContadorPage> {

  final _stiloTexto = new TextStyle( fontSize: 25);
  int _conteo = 0;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador App'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de Clicks:', style: _stiloTexto),
              Text('$_conteo', style: _stiloTexto),
            ],
          ),
        ),
        floatingActionButton: _crearBotones(),
            );
          }
        
  Widget _crearBotones() {

    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[ 
          SizedBox( width: 30.0),
          FloatingActionButton( child: Icon( Icons.exposure_zero), onPressed: _reset,),
          Expanded(child: SizedBox()),
          FloatingActionButton( child: Icon( Icons.remove), onPressed: _disminuir,),
          SizedBox( width: 30.0),
          FloatingActionButton( child: Icon( Icons.add), onPressed: _agregar,),
        ],
    ); //Row
  }
  void _agregar(){
    
    setState(() =>_conteo++ );
  }//agregar
  
    void _disminuir(){
      
      setState(() => _conteo-- );
    }//disminuir

    void _reset(){

      setState(() {
        _conteo = 0;
      });
    }
}