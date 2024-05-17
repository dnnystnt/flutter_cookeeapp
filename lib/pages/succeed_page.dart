import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/pages/main_page.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';
import 'package:flutter_cookeeapp/widgets/custom_button.dart';

class SucceedPage extends StatelessWidget {
  const SucceedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/success-icon.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Payment Succeed!',
              style: kTitleTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
                height: 1.5,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Vulputate donec mus mauris elementum. Lacus condimentum accumsan orci in sit aliquam elit condimentum. Sit integer eu viverra nulla.',
              style: kDescTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 300),
            CustomButton(
              title: 'Back to Homepage',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
