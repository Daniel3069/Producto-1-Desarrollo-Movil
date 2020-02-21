import 'package:flutter/material.dart';

class EliminarPage extends StatelessWidget{
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
                Text('Elimina la pelicula que deseas', style: TextStyle(fontSize: 15.0),),
                Divider(),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ID Pelicula:',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                  ),                
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.orange,
                        onPressed:(){

                        } ,
                        child: Text('Eliminar pelicula',style: TextStyle(color: Colors.white,)),
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