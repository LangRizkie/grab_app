import 'package:flutter_modular/flutter_modular.dart';
import 'package:grab_app/pages/home/home.pages.dart';

class Routes {
  static const routeHome = '/';
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Routes.routeHome,
          child: (context, args) => const HomePage(),
        )
      ];
}
