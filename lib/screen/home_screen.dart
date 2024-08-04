import 'package:erfanautorouter/Developer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) => Navigator.maybePop(context),
      child: Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => context.goNamed(
                  'first',
                  extra:
                      Developer(name: 'Mahan', experience: 2, field: 'Flutter'),
                ),
                child: const Text('Go to First page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
