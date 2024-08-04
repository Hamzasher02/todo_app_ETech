import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  ErrorWidget({Key? key, required this.error}) : super(key: key);
  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error Page"),
      ),
      body: Center(
        child: Text(error),
      ),
    );
  }
}
