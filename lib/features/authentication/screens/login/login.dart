import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/features/authentication/controllers/login/login_controller.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';

import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Logo , Title and Sub-Title
              const TLoginHeader(),
              ///Form
              const TLoginForm(),
              ///Divider
              TLoginDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
