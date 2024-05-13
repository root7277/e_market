import 'package:e_commerce_mobile_app/resours/app_style.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Top Categories', style: AppStyles.hiStyle),
        Text('See All', style: AppStyles.seeAll),
      ],
    );
  }
}
