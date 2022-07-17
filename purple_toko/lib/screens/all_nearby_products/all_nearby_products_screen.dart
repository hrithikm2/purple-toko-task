import 'package:auto_size_text/auto_size_text.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purple_toko/components/app_logo.dart';
import 'package:purple_toko/constants/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/constants.dart';
import '../../models/nearby_shops_model.dart';
import 'all_nearby_products_view_model.dart';

class AllNearbyProductsScreen extends StatelessWidget {
  const AllNearbyProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllNearbyProductsViewModel>.reactive(
        viewModelBuilder: () => AllNearbyProductsViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => _body(context, model));
  }

  Widget _body(BuildContext context, AllNearbyProductsViewModel model) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.filter_center_focus_outlined),
            onPressed: () {},
            color: AppColors.secondaryColor,
          ),
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          centerTitle: true,
          title: const AppLogo(
            isSmall: true,
          ),
          actions: [
            IconButton(
              icon: (model.isLiked)
                  ? const Icon(FontAwesomeIcons.solidHeart)
                  : const Icon(FontAwesomeIcons.heart),
              onPressed: () {
                model.onLikeTapped();
              },
              color: AppColors.secondaryColor,
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.cartShopping),
              onPressed: () {
                model.goToCart(context);
              },
              color: AppColors.secondaryColor,
            )
          ],
        ),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.all(24),
              shrinkWrap: true,
              children: [
                32.heightBox,
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: model.markets.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: W(context) * 70,
                                  child: AutoSizeText(
                                    "Default market in ${model.markets[index]['name']}",
                                    minFontSize: 8,
                                    maxLines: 2,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextButton(
                                  child: "See all".text.make(),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            16.heightBox,
                            (model.markets[index]['shops'].isEmpty)
                                ? "No shops enrolled in the market"
                                    .text
                                    .makeCentered()
                                : SizedBox(
                                    height: H(context) * 37,
                                    child: ListView.builder(
                                        itemCount: model
                                            .markets[index]['shops'].length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, shopIndex) {
                                          var shops = model.markets[index]
                                              ['shops'] as List<Shops>;
                                          return Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            elevation: 8,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      SizedBox(
                                                        height: W(context) * 35,
                                                        width: W(context) * 35,
                                                        child: ExtendedImage.asset(
                                                            "assets/images/shop.jpg"),
                                                      ),
                                                      SizedBox(
                                                          height:
                                                              W(context) * 35,
                                                          width:
                                                              W(context) * 35,
                                                          child: Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                    height: 20,
                                                                    width: 70,
                                                                    child: "${shops[shopIndex].offers} offer(s)"
                                                                        .text
                                                                        .makeCentered(),
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                      color: Vx
                                                                          .green500,
                                                                    ),
                                                                    width: 35,
                                                                    height: 45,
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        const Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              AppColors.primaryColor,
                                                                        ),
                                                                        "${(shops[shopIndex].ratings == null) ? "" : shops[shopIndex].ratings}"
                                                                            .text
                                                                            .xs
                                                                            .makeCentered(),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ))
                                                    ],
                                                  ),
                                                  16.heightBox,
                                                  SizedBox(
                                                    width: W(context) * 30,
                                                    height: H(context) * 3.5,
                                                    child:
                                                        "${shops[shopIndex].shop?.shopName}"
                                                            .text
                                                            .bold
                                                            .make(),
                                                  ),
                                                  5.heightBox,
                                                  SizedBox(
                                                    width: W(context) * 30,
                                                    height: H(context) * 3.5,
                                                    child:
                                                        "${shops[shopIndex].categories?[0].name}"
                                                            .text
                                                            .semiBold
                                                            .make(),
                                                  ),
                                                  5.heightBox,
                                                  SizedBox(
                                                    width: W(context) * 30,
                                                    height: H(context) * 3.5,
                                                    child:
                                                        "${shops[shopIndex].shop?.street}"
                                                            .text
                                                            .overflow(
                                                                TextOverflow
                                                                    .ellipsis)
                                                            .make(),
                                                  ),
                                                  5.heightBox,
                                                  MaterialButton(
                                                      padding: EdgeInsets.zero,
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      onPressed: () {},
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4,
                                                                horizontal: 8),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            border: Border.all(
                                                                color: AppColors
                                                                    .secondaryColor)),
                                                        child: "CLOSED"
                                                            .text
                                                            .green400
                                                            .make(),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                          ],
                        )),
              ],
            ),
            Visibility(
                visible: model.isBusy,
                child: Container(
                    color: Colors.black.withOpacity(0.2),
                    height: H(context) * 100,
                    width: W(context) * 100,
                    child: const CircularProgressIndicator.adaptive()))
          ],
        ));
  }
}
