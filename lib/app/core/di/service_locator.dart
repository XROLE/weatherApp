import 'package:get_it/get_it.dart';
import 'package:weather_app/app/core/client/http_client.dart';
import 'package:weather_app/data/remote/weather/weather_service.dart';
import 'package:weather_app/data/remote/weather/weather_service_impl.dart';


GetIt sl = GetIt.instance;

Future<void> setUpServiceLocator() async {
  sl.registerSingleton<HttpClient>(HttpClient());
  sl.registerLazySingleton<WeatherService>(() => WeatherServiceImpl(sl.get()));
}