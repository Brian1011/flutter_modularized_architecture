import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularize/modules/home/home_module.dart';
import 'package:modularize/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        /*ChildRoute(Modular.initialRoute,
            child: (context, args) => const Home1()),
        ChildRoute('/home2/:name',
            child: (context, args) => Home2(
                  name: args.queryParams['name'],
                )),*/
        ModuleRoute(Modular.initialRoute, module: LoginModule()),
        ModuleRoute("/home/", module: HomeModule())
      ];
}
