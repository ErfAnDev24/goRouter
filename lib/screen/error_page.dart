import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error Screen')),
      body: Center(
          child: Column(
        children: [
          Text(
            'Error Screen',
            style: TextStyle(fontSize: 80),
          )
        ],
      )),
    );
  }
}
