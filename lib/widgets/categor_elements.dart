import 'package:e_commerce_mobile_app/resours/app_color.dart';
import 'package:e_commerce_mobile_app/resours/app_image.dart';
import 'package:e_commerce_mobile_app/resours/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryElements extends StatefulWidget {
  const CategoryElements({super.key});

  @override
  State<CategoryElements> createState() => _CategoryElementsState();
}

class _CategoryElementsState extends State<CategoryElements> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/card');
      },
      child: GridView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: 174,
                height: 204,
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.categoryElementsContainerColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('50% OFF', style: AppStyles.categoryElementsDiscountText),
                    Image.asset(AppImage.categoryElementsImage),
                    const Text('Redmi Note 4', style: AppStyles.categoryElementsName),
                    Row(
                      children: [SvgPicture.asset(AppImage.categoryElementsPrice), const SizedBox(width: 6), const Text('45,000', style: AppStyles.categoryElementsPrice)],
                    )
                  ],
                ),
              ),
              const Positioned(left: 100, bottom: 110, child: IsFavorite()),
            ],
          );
        },
      ),
    );
  }
}

class IsFavorite extends StatefulWidget {
  const IsFavorite({super.key});

  @override
  State<IsFavorite> createState() => _IsFavoriteState();
}

class _IsFavoriteState extends State<IsFavorite> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFav = !isFav;
        });
      },
      icon: isFav ? const Icon(Icons.favorite, color: AppColors.isFavIconRed) : const Icon(Icons.favorite, color: AppColors.isFavIconGrey),
    );
  }
}
