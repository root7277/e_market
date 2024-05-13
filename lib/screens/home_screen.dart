import 'package:e_commerce_mobile_app/resours/app_color.dart';
import 'package:e_commerce_mobile_app/resours/app_icon.dart';
import 'package:e_commerce_mobile_app/resours/app_style.dart';
import 'package:e_commerce_mobile_app/widgets/app_bar_widget.dart';
import 'package:e_commerce_mobile_app/widgets/categor_elements.dart';
import 'package:e_commerce_mobile_app/widgets/categories.dart';
import 'package:e_commerce_mobile_app/widgets/discount_widget.dart';
import 'package:e_commerce_mobile_app/widgets/hi_widget.dart';
import 'package:e_commerce_mobile_app/widgets/top_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBarContainer(iconNama: AppIcons.drawerIcon, onTabIcon: () {}),
        actions: [AppBarContainer(iconNama: AppIcons.searchIcon, onTabIcon: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hello Fola degan so'z widget orqali qilindi:
            const HiWidget(),
            const Text("Let’s start shopping!", style: AppStyles.startShoppingText),
            const SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: const [
                  DiscountWidget(containerColor: AppColors.discountContainerColor1, elevatedButtonTextColor: AppColors.discountCantainerElevatedButtonTextColor1, elevatedButtonColor: AppColors.discountContainerElevatedButtonColor1),
                  DiscountWidget(containerColor: AppColors.discountContainerColor2, elevatedButtonTextColor: AppColors.discountCantainerElevatedButtonTextColor2, elevatedButtonColor: AppColors.discountContainerElevatedButtonColor2),
                  DiscountWidget(containerColor: AppColors.discountContainerColor1, elevatedButtonTextColor: AppColors.discountCantainerElevatedButtonTextColor1, elevatedButtonColor: AppColors.discountContainerElevatedButtonColor1),
                  DiscountWidget(containerColor: AppColors.discountContainerColor2, elevatedButtonTextColor: AppColors.discountCantainerElevatedButtonTextColor2, elevatedButtonColor: AppColors.discountContainerElevatedButtonColor2),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Top Categories text widget;
            const TopCategories(),
            const SizedBox(height: 20),
            // All Categories widget;
            const SizedBox(
              height: 65,
              child: Categories(),
            ),
            const SizedBox(height: 20),
            // Category Elements widget
            const SizedBox(height: 360, child: CategoryElements()),
          ],
        ),
      ),
    );
  }
}
