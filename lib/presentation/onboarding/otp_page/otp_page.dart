import 'package:flutter/material.dart';
import 'package:myapp/presentation/home_page.dart';
import 'package:myapp/presentation/widgets/custom_button.dart';

import '../../layouts/onboarding_layout.dart';
import '../../widgets/custom_otp_pin_field_widget.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      showBackButton: true,
      topHeightScale: .15,
      heightScale: .85,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verify your email",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Please enter the OTP sent to",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        // fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "toluolu.ab19@gmail.com",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomOtpPinFieldWidget(
                  autoFocus: false,
                  maxLength: 6,
                  onSubmit: (p0) {},
                  onChange: (String otp) {},
                  dividerPosition: 3,
                )
              ],
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomButton(
                        text: "Verify Email",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        }),
                    const SizedBox(
                      height: 24,
                    ),
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
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      flex: 3,
                      child: Text(
                        "Email Verification",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w200,
                            ),
                      ),
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
