import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (i) => 'Item ${i + 1}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter6'),
        backgroundColor: const Color.fromARGB(255, 77, 143, 242),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          crossAxisCount: 3,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (BuildContext context, int idx) {
          return Container(
            color: Colors.blue[100 + (idx % 8) * 100],
            child: Center(child: Text(items[idx])));
        },
      ),
    );
  }
}
