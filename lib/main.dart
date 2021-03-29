
import 'package:flutter/material.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/card_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: getAplicationRoutes(),

      // Otra manera de llamar las rutas
      // onGenerateRoute: (RouteSettings settings){
      //   print('ruta llamada ${settings.name}');
      //   return MaterialPageRoute(builder: (BuildContext context) => CardPage());
      // },
    );
  }
}