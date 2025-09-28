// lib/basic_widget/loading_cupertino.dart
import 'package:flutter/cupertino.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton.filled(
              onPressed: () {},
              child: const Text('Contoh button'),
            ),
            const SizedBox(height: 16),
            const CupertinoActivityIndicator(radius: 14),
          ],
        ),
      ),
    );
  }
}
