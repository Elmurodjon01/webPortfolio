import 'package:get_it/get_it.dart';
import 'package:webpage/helpers/prefs.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<Storage>(Storage());
}
