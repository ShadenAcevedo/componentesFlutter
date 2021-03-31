import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho', 'Nueve', 'Diez'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listado de Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }


  // List<Widget> _crearItems() {

  //   List<Widget> lista = new List<Widget>();
  //   for (String opcion in opciones) {
  //     final tituloOpcion = ListTile(
  //       title: Text(opcion), 
  //     );      
  //     lista..add(tituloOpcion)
  //     ..add( Divider(
  //         color: Colors.deepOrange
  //       )
  //     );
  //   }
  //   return lista;
  // }

  List<Widget> _crearItemsCorta(){

    return opciones.map((item){
      return Column(
        children: [
          ListTile(
            title: Text( item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.access_alarm_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(
            color: Colors.deepOrange,
            height: 10,
          )
        ],
      );
    }).toList();
  }
}