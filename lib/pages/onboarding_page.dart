import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';
import 'package:flutter_cookeeapp/widgets/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 480,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image-onboarding.png',
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 500),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Text(
                      'Step up your Cooking Experience to the Next Level',
                      style: kTitleTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Our app will improve your cooking abilities! Explore a wealth of recipes, culinary techniques, and advice to become a master chef in your own kitchen.',
                      style: kDescTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60),
                    // Container(
                    //   width: 395,
                    //   height: 68,
                    //   child: TextButton(
                    //     onPressed: () {},
                    //     style: TextButton.styleFrom(
                    //       backgroundColor: kPrimaryColor,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(100),
                    //       ),
                    //     ),
                    //     child: Text(
                    //       'Get Started',
                    //       style: kWhiteTextStyle.copyWith(
                    //         fontSize: 16,
                    //         fontWeight: semiBold,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    CustomButton(
                      title: 'Get Started',
                      onPressed: () {},
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an Account?',
                          style: kDescTextStyle.copyWith(
                            fontWeight: regular,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login-page');
                          },
                          child: Text(
                            'Click Here',
                            style: kPrimaryTextStyle.copyWith(
                              decoration: TextDecoration.underline,
                              fontWeight: semiBold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
