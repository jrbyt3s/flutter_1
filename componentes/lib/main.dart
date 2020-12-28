import 'package:componentes/scr/pages/alert_page.dart';
import 'package:componentes/scr/pages/avatar_page.dart';
import 'package:componentes/scr/pages/home_page.dart';
import 'package:componentes/scr/routes/routes.dart';
//import 'package:componentes/scr/home_temp.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),   //home: HomePage(),
      onGenerateRoute: ( RouteSettings settings ){
        print('Ruta por defecto');
        return MaterialPageRoute(          
          builder: (BuildContext context) => AlertPage() );

      } ,
    );
  }
}