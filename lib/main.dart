import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 32, 11)),
      ),
      home: const MyHomePage(title: 'Flutter - Alessia Pérez'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroActual = 1;
  int _primoActual = 2;

  void _incrementCounter() {
    int numero = _numeroActual + 1;

    while (true) {
      bool esPrimo = true;

      for (int i = 2; i <= numero ~/ 2; i++) {
        if (numero % i == 0) {
          esPrimo = false;
          break;
        }
      }

      if (esPrimo) {
        setState(() {
          _primoActual = numero;
          _numeroActual = numero;
        });
        break;
      }

      numero++;
    }
  }

  void _reiniciar() {
    setState(() {
      _numeroActual = 1;
      _primoActual = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número primo actual:'),
            Text(
              '$_primoActual',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Siguiente primo',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _reiniciar,
            tooltip: 'Volver al inicio',
            child: const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
