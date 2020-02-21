import 'package:flutter/material.dart';

class AgregarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        
        child: Padding(
          
          padding: EdgeInsets.all(8.0),
          child: Form(
            
           // key: formkey,
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Agregar nuevas peliculas'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Clave de Pelicula:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Nombre de la Pelicula:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Genero:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Duracion:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Director :'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Clasificacion :'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Descripcion :'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Año de lazamiento:',
                  ),                
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.green,
                        onPressed:(){

                        } ,
                        child: Text('Agregar nueva pelicula'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}