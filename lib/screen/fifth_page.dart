import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The first screen
class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('five')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'this is Fifth Page',
              style: const TextStyle(fontSize: 60),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}
