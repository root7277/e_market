import 'package:e_commerce_mobile_app/resours/app_style.dart';
import 'package:flutter/material.dart';

class DiscountWidget extends StatefulWidget {
  final Color containerColor;
  final Color elevatedButtonTextColor;
  final Color elevatedButtonColor;
  const DiscountWidget({super.key, required this.containerColor, required this.elevatedButtonTextColor, required this.elevatedButtonColor});

  @override
  State<DiscountWidget> createState() => _DiscountWidgetState();
}

class _DiscountWidgetState extends State<DiscountWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 135,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('20% OFF DURING THE \nWEEKEND', style: AppStyles.discountContainerTextStyle),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: const MaterialStatePropertyAll(Size(80, 34.12)),
                backgroundColor: MaterialStatePropertyAll(widget.elevatedButtonColor),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.65),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                textAlign: TextAlign.center,
                'Get Now',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: widget.elevatedButtonTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
