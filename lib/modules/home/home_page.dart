import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularize/modules/home/home_store.dart';
import 'package:modularize/modules/home/model/user_model.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Modular.to.navigate(
                '/',
              );
            },
            child: const Text('Logout'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/home/user/Kuringa/3333/12/home',
              arguments: UserModel(id: 1, name: "Random right"));
          // Modular.to.navigate('/');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
