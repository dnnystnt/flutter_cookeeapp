import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cookeeapp/counter_bloc.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';
import 'package:flutter_cookeeapp/widgets/custom_button.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

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
            SizedBox(height: 40),
            Text(
              'Item',
              style: kTitleTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
                height: 1.5,
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/item-img.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Live 24 Hours Cooking (Free)',
                      style: kTitleTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 20),
                    BlocProvider(
                      create: (context) => CounterBloc(),
                      child: BlocBuilder<CounterBloc, int>(
                        builder: (context, state) {
                          return Row(
                            children: [
                              //

                              // Minus Button
                              Container(
                                decoration: BoxDecoration(
                                  color: kBackgroundOneColor,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    context
                                        .read<CounterBloc>()
                                        .add(CounterDecrementEvent());
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: kTitleColor,
                                  ),
                                ),
                              ),

                              // Quantity Count
                              SizedBox(
                                width: 40,
                                child: Center(
                                  child: Text(
                                    '$state',
                                    style: kTitleTextStyle.copyWith(
                                      fontWeight: semiBold,
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ),

                              // Plus Button
                              Container(
                                decoration: BoxDecoration(
                                  color: kBackgroundOneColor,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    context
                                        .read<CounterBloc>()
                                        .add(CounterIncrementEvent());
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: kTitleColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 72),
                              Text(
                                'USD 0',
                                style: kPrimaryTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  fontSize: 20,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Lanjut dari Order Summary
            SizedBox(height: 280),
            Text(
              'Order Summary',
              style: kTitleTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
                height: 1.5,
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: kDescTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                Text(
                  'USD 0',
                  style: kDescTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax (10%)',
                  style: kDescTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                Text(
                  'USD 0',
                  style: kDescTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              color: Color(0xffEBEBEB),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: kTitleTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 20,
                    height: 1.5,
                  ),
                ),
                Text(
                  'USD 0',
                  style: kTitleTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 20,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            CustomButton(
              title: 'Proceed Transactions',
              onPressed: () {
                Navigator.pushNamed(context, '/succeed-page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
