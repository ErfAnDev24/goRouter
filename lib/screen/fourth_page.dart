import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The first screen
class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('fourth')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'this is fourth Page',
              style: const TextStyle(fontSize: 60),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('back'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => context.goNamed('fifth'),
              child: const Text('Go fifth'),
            ),
          ],
        ),
      ),
    );
  }
}
