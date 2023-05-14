import 'package:bookly/features/home/views/widgets/best_seller_future_builder.dart';
import 'package:bookly/features/home/views/widgets/featured_future_builder.dart';
import 'package:flutter/material.dart';
import '../../../../utils/styles.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 24,
          ),
          const FeaturedFutureBuilder(),
          const SizedBox(
            height: 51,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BestSellerFutureBuilder(),
        ],
      ),
    );
  }
}
