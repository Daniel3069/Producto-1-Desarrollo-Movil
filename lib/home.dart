import 'package:flutter/material.dart';
import 'package:producto_1/rutas/page/actualizacion.dart';
import 'package:producto_1/rutas/page/agregarpeli.dart';
import 'package:producto_1/rutas/page/catalogo.dart';
import 'package:producto_1/rutas/page/consulta.dart';
import 'package:producto_1/rutas/page/cuenta.dart';
import 'package:producto_1/rutas/page/eliminar.dart';


class HomePage extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return CuentaPage();
      case 1:
        return CatalogoPage();
      case 2:
        return ConsultaPage();
      case 3:
        return AgregarPage();
      case 4:
        return ActualizarPage();
      case 5:
        return EliminarPage();
    }
  }

  _onselectitem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peli Plus'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('No registrado'),
              accountEmail: Text('No registrado'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text(
                  'Usuario',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            ListTile(
              title: Text('Cuenta'),
              leading: Icon(Icons.people, color: Colors.purple,),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onselectitem(0);
              },
            ),
            ListTile(
              title: Text('Catalogo'),
              leading: Icon(Icons.category, color: Colors.cyan,),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onselectitem(1);
              },
            ),
            ListTile(
              title: Text('Agregar peliculas'),
              leading: Icon(Icons.add_circle_outline, color: Colors.green,),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onselectitem(3);
              },
            ),
            ListTile(
              title: Text('Actualizacion'),
              leading: Icon(Icons.update, color: Colors.yellow,),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onselectitem(4);
              },
            ),
            ListTile(
              title: Text('Eliminar', style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.delete_forever, color: Colors.red,),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onselectitem(5);
              },
            ),
            ListTile(
              title: Text('Consulta'),
              leading: Icon(Icons.view_list, color: Colors.blue,),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onselectitem(2);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
