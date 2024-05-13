import 'package:e_commerce_mobile_app/resours/app_color.dart';
import 'package:e_commerce_mobile_app/resours/categories_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool isColor = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoriesIcon.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isColor = !isColor;
            });
          },
          child: Container(
            width: 64,
            height: 62.55,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(7.27)),
              border: const Border.fromBorderSide(BorderSide(width: 1.42, color: AppColors.categoriesContainerBorderColor)),
              color: isColor ? AppColors.discountContainerColor1 : AppColors.categoriesContainerColor,
            ),
            child: SvgPicture.asset(categoriesIcon[index]),
          ),
        );
      },
    );
  }
}
