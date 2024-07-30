import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: controller.skipPage,
          child: Text('Skip'),
        ));
  }
}
