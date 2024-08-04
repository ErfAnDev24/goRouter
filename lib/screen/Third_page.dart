import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The first screen
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('third')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'this is third Page',
              style: TextStyle(fontSize: 60),
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
              onPressed: () => context.goNamed('fourth'),
              child: const Text('Test goNamed fourth page'),
            ),
          ],
        ),
      ),
    );
  }
}
