import 'package:dio/dio.dart';
import 'package:purple_toko/constants/constants.dart';
import 'package:purple_toko/models/nearby_shops_model.dart';

class GetNearbyShopsService {
  String url = 'http://pt.frantic.in/RestApi/fetch_shops_by_distance';
  Future<NearbyShopsModel> api_FetchNearbyMarkets(
      double latitude, double longitude, int distance) async {
    Response response;
    api_DIO.options.headers['Content-Type'] =
        "application/x-www-form-urlencoded";
    response = await api_DIO.post(
      url,
      data: {
        'latitude': latitude,
        'longitude': longitude,
        "distance": distance,
      },
    );
    if (response.statusCode == 200) {
      if (response.data['response_string'] == "OK") {
        return NearbyShopsModel.fromJson(response.data);
      } else {
        return NearbyShopsModel();
      }
    } else {
      return NearbyShopsModel.fromJson(response.data);
    }
  }
}
