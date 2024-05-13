import 'package:e_commerce_mobile_app/resours/app_color.dart';
import 'package:e_commerce_mobile_app/resours/app_image.dart';
import 'package:e_commerce_mobile_app/resours/app_style.dart';
import 'package:e_commerce_mobile_app/widgets/card_stars.dart';
import 'package:e_commerce_mobile_app/widgets/cars_element_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 360,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(160), bottomRight: Radius.circular(160)),
                  color: AppColors.cardImageBackgroundColor,
                ),
                child: Image.asset(AppImage.cardImage),
              ),
              Positioned(
                top: 40,
                left: 15,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text('Apple Watch Series 6', style: AppStyles.cardElementName),
          ),
          const CardStars(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppImage.categoryElementsPrice),
                    const SizedBox(width: 6),
                    const Text('45,000', style: AppStyles.cardEelementPrice),
                  ],
                ),
                const Text('Available in stock', style: AppStyles.cardElementPriceRow)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text('About', style: AppStyles.cardEelementAbout),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
              style: AppStyles.cardEelementAboutText,
            ),
          ),
          const CardElementSize(),
          Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(AppColors.addToCardBottun),
                minimumSize: MaterialStatePropertyAll(Size(343, 51)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
              onPressed: () {},
              child: const Text('Add to cart', style: AppStyles.discountContainerTextStyle),
            ),
          )
        ],
      ),
    );
  }
}
