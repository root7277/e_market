import 'package:e_commerce_mobile_app/resours/app_color.dart';
import 'package:flutter/material.dart';

class CardElementSize extends StatelessWidget {
  const CardElementSize({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IsElementContainer(size: '35'),
          IsElementContainer(size: '36'),
          IsElementContainer(size: '37'),
          IsElementContainer(size: '38'),
          IsElementContainer(size: '39'),
          IsElementContainer(size: '40'),
        ],
      ),
    );
  }
}

class IsElementContainer extends StatefulWidget {
  final String size;
  const IsElementContainer({super.key, required this.size});

  @override
  State<IsElementContainer> createState() => _IsElementContainerState();
}

class _IsElementContainerState extends State<IsElementContainer> {
  bool isSize = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSize = !isSize;
        });
      },
      child: Container(
        width: 44,
        height: 43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: AppColors.cardBorderColor),
          color: isSize ? AppColors.discountContainerTextColor : AppColors.cardSizeContainerColor,
        ),
        child: Center(
          child: Text(
            widget.size,
            style: const TextStyle(
              fontSize: 14.28,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
        ),
      ),
    );
  }
}
