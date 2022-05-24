import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? icon;
  final String? title;
  final String? hint;
  final TextInputType? inputType;

  Editor({this.controller, this.icon, this.title, this.hint, this.inputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        style: TextStyle(fontSize: 20.0),
        controller: controller,
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: title,
          hintText: hint,
        ),
        keyboardType: inputType,
      ),
    );
  }
}