import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';
import 'package:flutter_cookeeapp/widgets/custom_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/back.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 396,
              height: 281,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/live-hours-cooking-2.png',
                  ),
                ),
              ),
            ),
            Text(
              'Live 24 Hours Cooking (Free)',
              style: kTitleTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
                height: 1.5,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 12),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/calendar-icon.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Tuesday, March 19 2024',
                      style: kDescTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                        height: 1.5,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/clock-icon.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      '01.00 am',
                      style: kDescTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                        height: 1.5,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Experience the world of cooking like never before with our Live 24 Hours Cooking app! Immerse yourself in a culinary adventure that never sleeps, with live cooking shows, tutorials, and interactive sessions available at any time of the day. Whether you are a novice cook or a seasoned chef, our app offers a variety of cuisines, techniques, and tips to inspire and delight your taste buds.',
              style: kDescTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14,
                height: 2,
              ),
              // textAlign: TextAlign.start,
            ),
            SizedBox(height: 20),
            CustomButton(
              title: 'Book Now',
              onPressed: () {
                // Lanjut dari sini
                Navigator.pushNamed(context, '/summary-page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
