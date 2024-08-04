import 'package:erfanautorouter/Developer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The first screen
class SecondPage extends StatelessWidget {
  final Developer? developer;
  const SecondPage({super.key, this.developer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('second')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'this is : ${developer?.name}',
              style: const TextStyle(fontSize: 60),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go back to the Home screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.goNamed('third'),
              child: const Text('Go to third screen'),
            ),
          ],
        ),
      ),
    );
  }
}
