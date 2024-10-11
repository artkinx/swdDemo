import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/helpers/hex_color.dart';
import 'package:myapp/presentation/widgets/custom_button.dart';
import 'package:myapp/presentation/widgets/custom_text_field.dart';

import '../layouts/base_layout.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: HexColor(AppColors.holderBackColor).withOpacity(.5),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // Welcome back text with waving hand emoji
              Text(
                'Welcome back 👋',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
              const SizedBox(height: 20),
              // Forgot password link
              TextButton(
                onPressed: () {
                  // Implement forgot password logic
                },
                child: const Text("Forgot password?"),
              ),
              const SizedBox(height: 20),
              // Sign in button
              CustomButton(
                  text: "Sign In",
                  onPressed: () {
                    // Implement sign in logic
                  }),
              const SizedBox(height: 20),
              // Create account link
              TextButton(
                onPressed: () {
                  // Implement create account logic
                },
                child: Text.rich(
                  TextSpan(
                    text: "I don't have an account, ",
                    children: [
                      TextSpan(
                          text: "Create account",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: HexColor(AppColors.primary),
                                  ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
