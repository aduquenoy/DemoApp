import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:weatherplay/data/model/placesearch.dart';
import 'package:weatherplay/config/constant/api_path.dart';

class PlacesearchRepository {
  Future<List<PlaceSearchModel>> fetchAutocomplete(
      String search, String loc) async {
    final url = Uri.https(
      AppApi.httpUri3,
      AppApi.httpUri4,
      {
        "input": search,
        "language": loc,
        "types": "(cities)",
        "key": AppApi.placeKEY
      },
    );

    final response = await http.get(url, headers: {
      "Access-Control-Allow-Origin": "*",
      "Accept": "application/json",
    });

    if (response.statusCode == 200) {
      final json = convert.jsonDecode(response.body);

      if (json['status'] == 'OK') {
        final jsonResponse = json['predictions'] as List;
        return jsonResponse
            .map((place) => PlaceSearchModel.fromJson(place))
            .toList();
      }
      if (json['status'] == 'ZERO_RESULTS') {
        return [];
      }
      throw Exception(json['error_message']);
    } else {
      throw Exception("Unable to fetch places");
    }
  }
}
