import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'all_nearby_products_view_model.dart';

class AllNearbyProductsScreen extends StatelessWidget {
  const AllNearbyProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllNearbyProductsViewModel>.reactive(
        viewModelBuilder: () => AllNearbyProductsViewModel(),
        builder: (context, model, child) => _body(context, model));
  }

  Widget _body(BuildContext context, AllNearbyProductsViewModel model) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: const [],
    ));
  }
}
