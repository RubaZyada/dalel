import 'package:dalel/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
   const CustomBtn({super.key, this.color, required this.text});
 final Color ?color;
final String  text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,0,10,0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color??AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
           // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child:  Text( text ,style: TextStyle(color: Colors.white,fontSize: 16),),
        ),
      ),
    );
  }
}