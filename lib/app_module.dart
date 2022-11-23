import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularize/main.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => const Home1()),
        ChildRoute('/home2/:name',
            child: (context, args) => Home2(
                  name: args.queryParams['name'],
                ))
      ];
}
