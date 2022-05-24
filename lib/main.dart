// ignore_for_file: deprecated_member_use, unnecessary_const, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, unused_field
import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:bytebank/pages/transfer_list.dart';
import 'package:flutter/material.dart';


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
        theme: ThemeData.dark(),
        home: TransfersList());
  }
}




