import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularize/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'My Smart App',
        theme: ThemeData(primarySwatch: Colors.blue),
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate);
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
            child: const Text("Navigate A"),
            onPressed: () {
              // navigate between screens
              Modular.to.pushNamed('/home2/sara', arguments: {'name': 'Joe'});
            },
          ),
        ),
      ),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home 2"),
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            const Text("Home 2"),
            const SizedBox(
              height: 10,
            ),
            Text("ARGS ${widget.name}")
          ],
        )),
      ),
    );
  }
}
