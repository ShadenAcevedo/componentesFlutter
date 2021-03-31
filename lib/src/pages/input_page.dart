import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _correo = '';
  String _fecha = '';
  TextEditingController _fechaController = new TextEditingController();
  
  String _opcionSeleccionada = 'Volar';
  List<String> _poderes = ['Volar', 'Rayos X', 'Soplar', 'Super Fuerza'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: [
          _crearNombre(),
          Divider(),
          _crearCorreo(),
          Divider(),
          _crearContrasena(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearNombre() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo va el nombre',
        suffixIcon: Icon(Icons.person),
        icon: Icon(Icons.account_circle)
      ),

      onChanged: (valor){
        setState(() {
          _nombre = valor;          
        });
      },
    );
  }

  Widget _crearCorreo(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Correo',
        labelText: 'Correo',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),

      onChanged: (valor) => setState(() => _correo = valor)
    );
  }

  Widget _crearContrasena(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),

      onChanged: (valor) => setState(() => _correo = valor)
    );
  }

  Widget _crearFecha(BuildContext context){
    return TextField(
      enableInteractiveSelection: false,
      controller: _fechaController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _seleccionarFecha(context);
      },
    ); 
  }

  _seleccionarFecha(BuildContext context) async{
    DateTime fechaSeleccionada = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2015), 
      lastDate: new DateTime(2025),
      locale: Locale('es')
    );

    if( fechaSeleccionada != null ){
      setState(() {
        _fecha = fechaSeleccionada.toString();
        _fechaController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown(){
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) {
      lista.add( DropdownMenuItem(
        child: Text(poder),
        value: poder
      ));
    });

    return lista;
  }

  Widget _crearDropdown(){
    return Row(
      children: [
        Icon(Icons.person_pin_rounded),
        SizedBox(width: 30.0),
        DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(), 
          onChanged: (opcion){
            setState(() {
              _opcionSeleccionada = opcion;
            });
          }
        )
      ],
    );
  }

  Widget _crearPersona(){
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Correo es: $_correo'),
      trailing: Text(_opcionSeleccionada),
    );
  }
}