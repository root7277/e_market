import 'package:flutter/material.dart';

class AppBarContainer extends StatefulWidget {
  final Icon iconNama;
  final Function() onTabIcon;
  const AppBarContainer({super.key, required this.iconNama, required this.onTabIcon});

  @override
  State<AppBarContainer> createState() => _AppBarContainerState();
}

class _AppBarContainerState extends State<AppBarContainer> {
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: widget.onTabIcon, icon: widget.iconNama);
  }
}
