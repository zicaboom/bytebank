import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatelessWidget {
  final TextEditingController _controllerAccountNumber =
      TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: Column(
        children: <Widget>[
          Editor(
            controller: _controllerAccountNumber,
            title: 'Número Conta',
            hint: '0000',
          ),
          Editor(
            controller: _controllerValue,
            title: 'Valor',
            hint: '100.00',
            icon: Icons.monetization_on,
          ),
          ElevatedButton(
            onPressed: () => _createTransfer(context),
            child: Text('Confirmar'),
          ),
        ],
      ),
    );
  }

  void _createTransfer(BuildContext context) {
    final int? accountNumber = int.tryParse(_controllerAccountNumber.text);
    final double? value = double.tryParse(_controllerValue.text);

    if (accountNumber != null && value != null) {
      final createdTransfer = Transfer(accountNumber, value);
      Navigator.pop(context, createdTransfer);
    }
  }
}

