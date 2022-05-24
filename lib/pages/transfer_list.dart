import 'package:bytebank/models/transfer.dart';
import 'package:bytebank/pages/transfer_form.dart';
import 'package:flutter/material.dart';

class TransfersList extends StatefulWidget {
  final List<Transfer> _transfers = [];

  @override
  State<StatefulWidget> createState() {
    return _TransfersListState();
  }
}

class _TransfersListState extends State<TransfersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._transfers[index];
          return TransferItem(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTransfer(),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addTransfer() async {
    final transfer = await Navigator.push<Transfer>(context,
        MaterialPageRoute(builder: (context) {
      return TransferForm();
    }));
    if (transfer != null) {
      widget._transfers.add(transfer);
      setState(() => {});
    }
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.accountNumber.toString()),
        leading: const Icon(Icons.monetization_on),
      ),
    );
  }
}