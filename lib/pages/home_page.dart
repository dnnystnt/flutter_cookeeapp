import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';
import 'package:flutter_cookeeapp/widgets/custom_button.dart';
import 'package:flutter_cookeeapp/widgets/custom_cuisine_category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Make Widget header(),
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 6),
        width: 428,
        height: 232,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/image_profile.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning',
                                  style: kWhiteTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Dylan Watson',
                                  style: kWhiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/notifications.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            // Lanjut dari bawah sini vvvvv
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                // controller: usernameEmailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhiteColor,
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: kHintTextColor,
                  label: Text(
                    'Search...',
                    style: kHintTextStyle,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // make advertisement()
    Widget advertisement() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Advertisement',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 396,
              height: 174,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/get-special-offer.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get Special Offer',
                          style: kTitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Up to 35%',
                          style: kDescTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                          ),
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                          width: 140,
                          title: 'Claim',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // make cuisineCategory()
    Widget cuisineCategory() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cuisine Category',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCuisineCategory(
                      imgUrl: 'assets/western-food.png', title: 'Western'),
                  CustomCuisineCategory(
                      imgUrl: 'assets/italian-food.png', title: 'Italian'),
                  CustomCuisineCategory(
                      imgUrl: 'assets/mexican-food.png', title: 'Mexican'),
                  CustomCuisineCategory(
                      imgUrl: 'assets/chinese-food.png', title: 'Chinese'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // make Widget otherActivities()
    Widget otherActivities() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Other Activities',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // LANJUT DARI SINI
                Navigator.pushNamed(context, '/detail-page');
              },
              child: Container(
                margin: EdgeInsets.only(top: 12),
                width: 396,
                height: 174,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/live-hours-cooking.png',
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Live 24 Hours Cooking (Free)',
                        style: kWhiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Live Streaming on 01.00 am',
                        style: kWhiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        advertisement(),
        cuisineCategory(),
        otherActivities(),
      ],
    );
  }
}

// Lanjutin dari Search nya
