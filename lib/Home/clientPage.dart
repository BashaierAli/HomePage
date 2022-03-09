import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)=>Scaffold(
    body: Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Client Page",
          style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),
        ),
      ),
    ),
  ) ;

}
