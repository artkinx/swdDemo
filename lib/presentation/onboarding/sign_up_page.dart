import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/helpers/hex_color.dart';
import 'package:myapp/presentation/onboarding/otp_page/otp_page.dart';
import 'package:myapp/presentation/onboarding/sign_in.dart';
import 'package:myapp/presentation/widgets/gradient_text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../layouts/onboarding_layout.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      // title: 'Sign in instead',
      topHeightScale: .13,
      heightScale: 1,
      titleWidget: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()));
        },
        child: GradientTextWidget(
          "Sign in instead",
          gradientType: GradientType.linear,
          colors: [
            Theme.of(context).colorScheme.primary,
            HexColor(AppColors.secondary),
          ],
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 16,
              decoration: TextDecoration.combine([TextDecoration.underline])),
        ),
      ),

      showBackButton: true,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            24, 0, 24, MediaQuery.viewInsetsOf(context).bottom + 100),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Center(
                    child: Column(
                      children: [
                        Text(
                          'Create an account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: CustomTextField(
                            hintText: "First Name", labelText: "First Name"),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        flex: 3,
                        child: CustomTextField(
                            hintText: "Last Name", labelText: "Last Name"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    labelText: 'Referral Code (Optional)',
                    hintText: 'Enter your referral code',
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtpPage()));
                    },
                  ),
                  // const SizedBox(height: 50),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Container(
                // color: Colors.amber,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Divider(),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Account Information",
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
