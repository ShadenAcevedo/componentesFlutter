
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/routes/routes.dart';
// import 'package:componentes/src/pages/card_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', 'ES'),
      ],
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