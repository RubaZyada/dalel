// ignore: camel_case_types
import 'package:dalel/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class customnavbar extends StatelessWidget {
  const customnavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [Text(AppStrings.skip)],
    );
  }
}
