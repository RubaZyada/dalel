// ignore: camel_case_types
import 'package:dalel/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class customnavbar extends StatelessWidget {
  const customnavbar({super.key, this.onTap});
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [GestureDetector(
        onTap: onTap,
        child: Text(AppStrings.skip))],
    );
  }
}
