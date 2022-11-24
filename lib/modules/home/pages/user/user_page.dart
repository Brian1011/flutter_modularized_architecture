import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularize/modules/home/model/user_model.dart';
import 'package:modularize/modules/home/pages/user/user_store.dart';

class UserPage extends StatefulWidget {
  final String? name;
  final String? age;
  final String? comment;
  final UserModel? userModel;
  UserPage({Key? key, this.name, this.userModel, this.age, this.comment})
      : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final UserStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('Comment - ${widget.comment}'),
              Text('UserPage - parameter ${widget.name} ${widget.age}'),
              Text(
                  'UserPage - object ${widget.userModel?.id} - ${widget.userModel?.name}'),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: store.setName,
                ),
              ),
              /*Observer(
                builder: (_) {
                  return Text('My name is: ${store.name}');
                },
              ),*/
              ElevatedButton(
                onPressed: () async {
                  await store.callTheService();
                },
                child: Text('Call the service'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
