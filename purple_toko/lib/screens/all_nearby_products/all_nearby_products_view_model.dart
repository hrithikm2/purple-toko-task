import 'package:flutter/material.dart';
import 'package:purple_toko/models/nearby_shops_model.dart';
import 'package:purple_toko/services/get_nearby_shops_service.dart';
import 'package:purple_toko/utils/functions.dart';
import 'package:stacked/stacked.dart';

class AllNearbyProductsViewModel extends BaseViewModel {
  bool isLiked = false;
  double latitude = 28.6210;
  double longitude = 77.3812;
  int distance = 20;
  List<Map<String, dynamic>> markets = [], shops = [];
  void onLikeTapped() {
    isLiked = !isLiked;
    notifyListeners();
  }

  void goToCart(BuildContext context) {
    Functions.showSnackBar(context, "Move to Cart Page");
  }

  void init() {
    print("Helo");
    fetchAllData();
  }

  GetNearbyShopsService service = GetNearbyShopsService();
  NearbyShopsModel? nmm;
  Future<void> fetchAllData() async {
    setBusy(true);

    nmm = await service.api_FetchNearbyMarkets(latitude, longitude, distance);

    markets = List.generate(nmm?.data?.length ?? 0, (index) {
      return {
        'name': nmm?.data?[index].markets?.name,
        'shops': nmm?.data?[index].shops,
      };
    });

    setBusy(false);
  }
}
