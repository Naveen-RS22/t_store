import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'package:t_store/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import '../../../utils/constants/text_strings.dart';
import '../controllers/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoadringPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTiltle: TTexts.onBoardingSubTitle1,
              ),
              OnBoadringPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTiltle: TTexts.onBoardingSubTitle2,
              ),
              OnBoadringPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTiltle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///skip button
          const OnBoardingSkip(),

          ///dot navigation smoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
