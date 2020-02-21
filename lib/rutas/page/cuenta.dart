import 'package:flutter/material.dart';

class CuentaPage extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Iniciar Sesión', style: TextStyle(fontSize: 20.0, color: Colors.orange),),
                TextFormField(
                  decoration: InputDecoration(
                  labelText: 'ejemplo@correo.com', 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.people, color: Colors.deepPurple,) ),
                  validator: (input) =>
                      !input.contains('@') ? 'El correo no es valido! ' : null,
                  onSaved: (input) => _email = input,
                ),
                Divider(),
                TextFormField(
                  decoration: InputDecoration( 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                      suffixIcon: Icon(Icons.perm_data_setting, color: Colors.purple,)
                      ),
                  validator: (input) =>
                      input.length < 5 ? 'Tu necesitas mas de 5 caracteres' : null,
                  onSaved: (input) => _password = input,
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: RaisedButton(
                        onPressed: _submit,
                        child: Text('Iniciar sesion', style: TextStyle(color: Colors.white),),
                        color: Colors.green,
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

  void _submit() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      print(_email);
      print(_password);
    }
  }
}
