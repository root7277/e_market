import 'package:e_commerce_mobile_app/resours/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle hiStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.hiStyleColor,
  );
  static const TextStyle startShoppingText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.startShoppingTextColor,
  );
  static const TextStyle discountContainerTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.discountContainerTextColor,
  );
  static const TextStyle seeAll = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.seeAllColor,
  );
  static const TextStyle categoryElementsDiscountText = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: AppColors.categoryElementsDiscountTextColor,
  );
  static const TextStyle categoryElementsName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.categoryElementsDiscountTextColor,
  );
  static const TextStyle categoryElementsPrice = TextStyle(
    fontSize: 12.23,
    fontWeight: FontWeight.w800,
    color: AppColors.categoryElementsPriceColor,
  );
  static const TextStyle cardElementName = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.categoryElementsDiscountTextColor,
  );
  static const TextStyle cardElementPriceRow = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.cardPriceColor,
  );
  static const TextStyle cardEelementPrice = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: AppColors.categoryElementsPriceColor,
  );
  static const TextStyle cardEelementAbout = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.categoryElementsPriceColor,
  );
  static const TextStyle cardEelementAboutText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.categoryElementsPriceColor,
  );
}
