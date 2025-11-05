import 'package:flutter/material.dart';

class CustomIconBar extends StatelessWidget {
  const CustomIconBar({super.key, required this.icon});
  final  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 47, height: 47,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .04),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Icon(icon, size: 30),
    );
  }
}
