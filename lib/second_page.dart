import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  Color c;
  String s;

  second_page(this.c,this.s,);



  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Hero(tag: widget.s, child: Container(width: 300,height: 300,color: widget.c,))
    );
  }
}
