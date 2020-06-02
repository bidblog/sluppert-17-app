import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slupperapplive/routes/sluppert_list.dart';

void main() => runApp(SluppertApp());

class SluppertApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sluppert App',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SluppertList(),
      ),
    );
  }
}
