// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'basic_widget/text_widget.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Praktikum 5 - Material & Cupertino',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // Langkah 4: state untuk navigasi bawah
//   int _selectedIndex = 0;

//   // Langkah 5: counter untuk FAB
//   int _counter = 0;
//   void _incrementCounter() => setState(() => _counter++);

//   static const String _logoPath = 'assets/logo_polinema.png';
//   static const double _logoBoxSize = 240;

//   @override
//   Widget build(BuildContext context) {
//     // Dua tab: Home & Settings
//     final pages = <Widget>[
//       // ===== Tab 0: HOME =====
//       Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Logo presisi: tidak terpotong
//             SizedBox(
//               width: _logoBoxSize,
//               height: _logoBoxSize,
//               child: FittedBox(
//                 fit: BoxFit.contain,
//                 alignment: Alignment.center,
//                 child: Image.asset(
//                   _logoPath,
//                   isAntiAlias: true,
//                   filterQuality: FilterQuality.high,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 12),
//             const MyTextWidget(),
//             const SizedBox(height: 12),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       // ===== Tab 1: SETTINGS =====
//       Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.settings,
//               size: 56,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//             const SizedBox(height: 12),
//             const Text('Settings Page'),
//           ],
//         ),
//       ),
//     ];

//     return Scaffold(
//       // Langkah 3: AppBar Material
//       appBar: AppBar(
//         title: Text(widget.title),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         actions: [
//           // Langkah 6: Buka halaman Cupertino
//           IconButton(
//             tooltip: 'Buka Halaman Cupertino',
//             icon: const Icon(Icons.phone_iphone),
//             onPressed: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (_) => const CupertinoDemoPage()),
//               );
//             },
//           ),
//         ],
//       ),

//       // Tampilkan page sesuai tab; IndexedStack biar state tab tidak reset
//       body: IndexedStack(index: _selectedIndex, children: pages),

//       // Langkah 4: BottomAppBar dengan notch agar FAB centerDocked rapi
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 8,
//         child: SizedBox(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                 tooltip: 'Home',
//                 icon: Icon(
//                   Icons.home,
//                   color: _selectedIndex == 0
//                       ? Theme.of(context).colorScheme.primary
//                       : null,
//                 ),
//                 onPressed: () => setState(() => _selectedIndex = 0),
//               ),
//               const SizedBox(width: 48), // ruang untuk notch FAB di tengah
//               IconButton(
//                 tooltip: 'Settings',
//                 icon: Icon(
//                   Icons.settings,
//                   color: _selectedIndex == 1
//                       ? Theme.of(context).colorScheme.primary
//                       : null,
//                 ),
//                 onPressed: () => setState(() => _selectedIndex = 1),
//               ),
//             ],
//           ),
//         ),
//       ),

//       // Langkah 5: FAB (increment counter) di tengah bawah
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }

// // Langkah 6: Halaman gaya iOS tanpa membungkus ulang dengan CupertinoApp
// class CupertinoDemoPage extends StatelessWidget {
//   const CupertinoDemoPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(
//         middle: Text('Cupertino Page'),
//       ),
//       child: SafeArea(
//         child: Center(
//           child: CupertinoButton.filled(
//             onPressed: () {},
//             child: const Text('Ini tombol iOS'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino (Langkah 1: Cupertino dan Loading Bar)

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Praktikum 5 - Langkah 1 (Cupertino & Loading Bar)',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Cupertino Button & Loading Bar'),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: const SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CupertinoButton.filled(
//                 onPressed: null, // biarkan nonaktif sesuai contoh codelab
//                 child: Text('Ini tombol iOS'),
//               ),
//               SizedBox(height: 16),
//               CupertinoActivityIndicator(radius: 14),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino (Langkah 2: Floating Action Button (FAB))

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Praktikum 5 - Langkah 2 (FAB)',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Floating Action Button'),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   void _incrementCounter() => setState(() => _counter++);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             const SizedBox(height: 8),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),

//       // BottomAppBar dengan notch agar FAB di tengah terlihat rapi
//       bottomNavigationBar: const BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 8,
//         height: 56,
//         child: SizedBox(), // kosong saja untuk contoh langkah 2
//       ),

//       // FAB di tengah bawah
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }

// Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino (Langkah 3: Scaffold Widget)

// import 'package:flutter/material.dart';
// import 'basic_widget/scaffold_widget.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.red),
//       home: const ScaffoldDemo(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino (Langkah 4: Dialog Widget)

// import 'package:flutter/material.dart';
// import 'basic_widget/dialog_widget.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Langkah 4 - Dialog Widgets',
//       theme: ThemeData(primarySwatch: Colors.red),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Langkah 4 - Dialog Widgets')),
//         body: const DialogDemo(),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino (Langkah 5: Input dan Selection Widget)

// import 'package:flutter/material.dart';
// import 'basic_widget/text_field_widget.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Langkah 5 - TextField',
//       theme: ThemeData(primarySwatch: Colors.red),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Contoh TextField')),
//         body: const TextFieldDemo(),
//       ),
//     );
//   }
// }

// Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino (Langkah 6: Date dan Time Picker)

import 'package:flutter/material.dart';
import 'basic_widget/date_time_picker_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Langkah 6 - Date & Time Pickers',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Date & Time Pickers')),
        body: const DateTimePickerDemo(),
      ),
    );
  }
}
