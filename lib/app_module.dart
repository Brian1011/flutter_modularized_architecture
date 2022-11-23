import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularize/main.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const Home1()),
        ChildRoute(Modular.initialRoute, child: (_, __) => const Home2())
      ];
}
