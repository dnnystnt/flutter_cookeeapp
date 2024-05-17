import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';

class CustomCuisineCategory extends StatelessWidget {
  final String imgUrl;
  final String title;

  const CustomCuisineCategory(
      {super.key, required this.imgUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imgUrl,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: kPrimaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
