import 'package:flutter_modular/flutter_modular.dart';
import 'package:pixel_cinema/app/core/presentation/navigation/routes.dart';
import 'package:pixel_cinema/app/modules/home/presentation/home_module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.module(
      Paths.home,
      module: HomeModule(),
    );
  }
}
