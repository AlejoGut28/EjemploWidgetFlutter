import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 20.1,
      ),

      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/Contador.png'),
          Text('Numero de clicks:', style: estiloTexto),
          Text( '$conteo' , style: estiloTexto),
        ],
      )),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
            
            // conteo = conteo + 1 ;  
         },
      )
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat // posicionar el boton
    );
  }
}
