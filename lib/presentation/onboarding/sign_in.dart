import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/helpers/hex_color.dart';
import 'package:myapp/presentation/home_page.dart';
import 'package:myapp/presentation/layouts/onboarding_layout.dart';
import 'package:myapp/presentation/widgets/custom_button.dart';
import 'package:myapp/presentation/widgets/custom_text_field.dart';
import 'package:myapp/presentation/widgets/gradient_text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      topHeightScale: .01,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 6.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 29),
                  decoration: BoxDecoration(
                    color: HexColor(AppColors.holderBackColor).withOpacity(.9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                // Welcome back text with waving hand emoji
                Text(
                  'Welcome back 👋',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w200,
                      ),
                ),
                const SizedBox(height: 70),
                // Email field
                const CustomTextField(
                  hintText: "Enter Email address",
                  labelText: "Email Address",
                ),
                const SizedBox(height: 20),
                // Password field
                const CustomTextField(
                  hintText: "Enter Password",
                  labelText: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 5),
                // Forgot password link
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      // Implement forgot password logic
                    },
                    child: Text(
                      "Forgot password?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Sign in button
                CustomButton(
                    text: "Sign In",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    }),
                const SizedBox(height: 20),
                // Create account link
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpPage();
                        },
                      ),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      text: "I don't have an account, ",
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: GradientTextWidget(
                            "Create account",
                            gradientType: GradientType.linear,
                            colors: [
                              HexColor(AppColors.primary),
                              HexColor(AppColors.secondary)
                            ],
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: HexColor(AppColors.primary),
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
