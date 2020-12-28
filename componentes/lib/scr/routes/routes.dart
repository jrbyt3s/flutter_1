import 'package:componentes/scr/pages/alert_page.dart';
import 'package:componentes/scr/pages/avatar_page.dart';
import 'package:componentes/scr/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder> {

    '/'       : (BuildContext context) => HomePage(),
    'alert'   : ( BuildContext context ) => AlertPage(),
    'avatar'  : (BuildContext context ) => AvartarPage(),

  };

}