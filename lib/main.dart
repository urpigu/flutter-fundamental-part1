import 'package:flutter/material.dart';
import 'basic_widget/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    const String logoPath = 'assets/logo_polinema.png';
    const double logoBoxSize =
        240; // ubah angka ini kalau ingin lebih besar/kecil

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo presisi: tidak terpotong, selalu proporsional
            SizedBox(
              width: logoBoxSize,
              height: logoBoxSize,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: Image.asset(
                  logoPath,
                  isAntiAlias: true,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const MyTextWidget(),
            const SizedBox(height: 12),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
