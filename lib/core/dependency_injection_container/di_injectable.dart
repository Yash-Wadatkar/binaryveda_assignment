import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di_injectable.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
