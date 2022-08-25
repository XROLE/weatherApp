import 'package:weather_app/app/core/client/http_client.dart';
import 'package:weather_app/app/endpoints/endpoints.dart';
import 'package:weather_app/data/remote/weather/weather_service.dart';

class WeatherServiceImpl implements WeatherService {
  final HttpClient httpClient;

  WeatherServiceImpl(this.httpClient);

  @override
  Future<dynamic> getTodayWeather() async {
    String url = Endpoints.getWeather();

    try {
       var res = await httpClient.get(url);
      print(res);
      return res;
    } catch(e){
      print('An Error occured: $e');
    }
    return Future.delayed(const Duration(seconds: 1), () {});
  }
}
