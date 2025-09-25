import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Hello World',
      theme: theme,
      darkTheme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final base = width < 360
        ? 18.0
        : width < 600
        ? 24.0
        : 32.0;

    return Scaffold(
      appBar: AppBar(title: const Text('Hello World')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Semantics(
            header: true,
            label: 'Nama lengkap',
            child: Text(
              'Anak Agung Ngurah Sadhu Gunawan',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: base,
                fontStyle: FontStyle.italic, // tidak bold, dibuat miring
                height: 1.25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
