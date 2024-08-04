import 'package:erfanautorouter/Developer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The first screen
class FirstPage extends StatelessWidget {
  final Developer? developer;
  const FirstPage({super.key, this.developer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('first')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'this is name : ${developer?.name}',
              style: const TextStyle(fontSize: 60),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.goNamed(
                'second',
                extra:
                    Developer(name: 'ErfAn', field: 'Flutter', experience: 2),
              ),
              child: const Text('Go Second'),
            ),
          ],
        ),
      ),
    );
  }
}
