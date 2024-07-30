import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/login/login_controller.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Form(
          child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
              labelText: TTexts.password,
              suffixIcon: Icon(
                Iconsax.eye_slash,
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          ///Remember me & Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe)
                ],
              ),

              ///Forgot Password
              TextButton(
                  onPressed: () {}, child: const Text(TTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          ///Sign In button
          SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: Text(TTexts.signIn))),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          ///create Account Button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: ()=>Get.to(const SignUpScreen()), child: Text(TTexts.createAccount))),
        ],
      )),
    );
  }
}
