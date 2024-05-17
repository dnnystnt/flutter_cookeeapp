import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';
// import '../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imgURL;
  final bool isSelected;

  const CustomBottomNavigationItem({
    super.key,
    required this.imgURL,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgURL,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        SizedBox(height: 2),
      ],
    );
  }
}
