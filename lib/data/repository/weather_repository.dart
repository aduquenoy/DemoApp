import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:weatherplay/data/model/forecast.dart';
import 'package:weatherplay/config/constant/api_path.dart';
import 'package:weatherplay/util/helper/helper_userpreferences.dart';

abstract class IWeatherRepository {
  Future<ForecastModel> getForecast(String? name, String? loc,
      {required double long, required double lat});
}

class WeatherRepository implements IWeatherRepository {
  @override
  Future<ForecastModel> getForecast(String? name, String? loc, {required double long, required double lat}) async {
    final user = UserPreferences.getUser();
    final unit = user.unit == 1 ? "metric" : "imperial";

    final url = Uri.https(AppApi.httpUri1, AppApi.httpUri2, {
      "q": name,
      "lon": name ?? long.toString(),
      "lat": name ?? lat.toString(),
      "lang": loc ?? "en",
      "units": unit,
      "appid": AppApi.weatherKEY
    });

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      //final jsonResponse = {"weather":[{"description":44,"icon":34,"id":803}],"base":"stations","main":{"temp":21,"feels_like":20.54,"temp_min":19.39,"temp_max":22.81,"pressure":1019,"humidity":53},"visibility":10000,"wind":{"speed":0.89,"deg":68,"gust":2.68},"clouds":{"all":75},"dt":1630082399,"sys":{"type":2,"id":2041230,"country":"FR","sunrise":1630040433,"sunset":1630089847},"timezone":7200,"id":2988507,"name":"Paris","cod":200};
      //return ForecastModel(temperature: MainModel(humidity: 10, temp: 22.22, tempMax: 40.40, tempMin: 10.10), nom: "Paris");
      return ForecastModel.fromJson(jsonResponse);
    } else {
      throw Exception("Unable to fetch weather");
    }
  }
}