import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home1());
  }
}

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home 1"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: const Text("Navigate"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home2()));
            },
          ),
        ),
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home 2"),
      ),
      body: Container(
        child: const Center(child: Text("Home 2")),
      ),
    );
  }
}
