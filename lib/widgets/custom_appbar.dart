import 'package:flutter/material.dart';
import 'package:notes_app_exmp/widgets/custom_search_bar.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        CustomSearchBar(),
      ],
    );
  }
}
