import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_texts.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products/product_card_vertical.dart';
import '../../../../common/widgets/texts/seaction_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///Search bar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        ///Categories
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///Body part
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///Promo Slider
                    const TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    ///Heading
                    TSectionHeading(
                      title: "Popular Products",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///popular products
                    TGridLayout(
                      itemBuilder: (_, index) => const TProductCardVertical(),
                      itemCount: 4,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
