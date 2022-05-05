import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Tipo padrão de widget estático
  @override
  Widget build(BuildContext context) {
    //Construtor
    return MaterialApp(
        title: 'Bytebank',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: TransfersPage() //HomePage('Bytebank'),
        );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListaTransferencias(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class TransfersPage extends StatelessWidget {
  const TransfersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 20.0),
              decoration: InputDecoration(
                labelText: 'Número Conta',
                hintText: '0000',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencias(100.0, '1000'),
        ItemTransferencias(200.0, '1001'),
        ItemTransferencias(300.0, '2000'),
      ],
    );
  }
}

class ItemTransferencias extends StatelessWidget {
  final double valor;
  final String numeroConta;

  ItemTransferencias(this.valor, this.numeroConta);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(valor.toString()),
        subtitle: Text(numeroConta),
        leading: Icon(Icons.monetization_on),
      ),
    );
  }
}
