import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatefulWidget {
  @override
  _MiAppState createState() {
    return _MiAppState();
  }
}

class _MiAppState extends State<MiApp> {
  int contador = 10;

  void sumarContador() {
    setState(() {
      contador += 2;
    });
  }

  void restarContador() {
    setState(() {
      contador -= 2;
    });
  }

  void multiplicarContador() {
    setState(() {
      contador *= 2;
    });
  }

  void dividirContador() {
    setState(() {
      contador = contador ~/ 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$contador',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: sumarContador,
              tooltip: 'Incrementar',
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: restarContador,
              tooltip: 'Decrementar',
              child: Icon(Icons.remove),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: multiplicarContador,
              tooltip: 'Multiplicar',
              child: Icon(Icons.close),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: dividirContador,
              tooltip: 'Dividir',
              child: Icon(Icons.rotate_left_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
