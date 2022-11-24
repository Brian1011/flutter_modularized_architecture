import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularize/modules/login/login_page.dart';
import 'package:modularize/modules/login/login_store.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [Bind.lazySingleton((i) => LoginStore())];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const LoginPage())];
}
