import 'package:flutter/material.dart';

class DialogDemo extends StatelessWidget {
  const DialogDemo({super.key});

  void _showAlertDialog(BuildContext context) {
    final okButton = TextButton(
      onPressed: () => Navigator.pop(context),
      child: const Text('OK'),
    );

    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('My title'),
        content: const Text('This is my message.'),
        actions: [okButton],
      ),
    );
  }

  Future<void> _showSimpleDialog(BuildContext context) async {
    final result = await showDialog<String>(
      context: context,
      builder: (_) => SimpleDialog(
        title: const Text('Pilih Aksi'),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, 'A'),
            child: const Text('A'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, 'B'),
            child: const Text('B'),
          ),
        ],
      ),
    );

    if (result != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Kamu memilih: $result')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _showAlertDialog(context),
            child: const Text('Show AlertDialog'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => _showSimpleDialog(context),
            child: const Text('Show SimpleDialog'),
          ),
        ],
      ),
    );
  }
}
