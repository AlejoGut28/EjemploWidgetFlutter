import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadroPageState();
}

class _ContadroPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
          elevation: 20.1,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/Contador.png'),
            Text('Numero de clicks:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )),
        floatingActionButton: _crearBotonnes()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat // posicionar el boton
        );
  }

  Widget _crearBotonnes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, 
      children: <Widget>[
      SizedBox(width: 30.0),
      FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
      Expanded(child: SizedBox()),
      FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
      SizedBox(width: 5.0),
      FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),
    ]);
  }

  void _agregar() { 
    setState(() =>  _conteo++ );
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() =>  _conteo = 0);
  }
}
