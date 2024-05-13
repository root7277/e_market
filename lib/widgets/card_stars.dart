import 'package:e_commerce_mobile_app/resours/app_icon.dart';
import 'package:flutter/material.dart';

class CardStars extends StatefulWidget {
  const CardStars({super.key});

  @override
  State<CardStars> createState() => _CardStarsState();
}

class _CardStarsState extends State<CardStars> {
  bool isStar = true;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 5),
      child: Row(
        children: [
          IsStar(),
          IsStar(),
          IsStar(),
          IsStar(),
          IsStar(),
        ],
      ),
    );
  }
}

class IsStar extends StatefulWidget {
  const IsStar({super.key});

  @override
  State<IsStar> createState() => _IsStarState();
}

class _IsStarState extends State<IsStar> {
  bool isStar = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isStar = !isStar;
        });
      },
      icon: isStar ? AppIcons.cardIconStar : AppIcons.cardIconStarAmber,
    );
  }
}
