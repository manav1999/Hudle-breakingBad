import 'package:get_it/get_it.dart';
import 'package:hudle/utils/utils.dart';


final getIt = GetIt.instance;

void setup(){
  getIt.registerSingleton<UtilityProvider>(UtilityProvider() ,signalsReady: true);

}