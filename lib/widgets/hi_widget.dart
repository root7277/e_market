import 'package:e_commerce_mobile_app/resours/app_image.dart';
import 'package:e_commerce_mobile_app/resours/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HiWidget extends StatelessWidget {
  const HiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Hello Fola', style: AppStyles.hiStyle),
        const SizedBox(width: 5),
        SvgPicture.asset(AppImage.hiSvg),
      ],
    );
  }
}
