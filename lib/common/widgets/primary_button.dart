import 'package:appfinanceiro/common/constants/app_colors.dart';
import 'package:appfinanceiro/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  final BorderRadius _borderRadius = const BorderRadius.all(Radius.circular(38.0));

  @override
  Widget build(BuildContext context) {
    return Ink(
         height:56,
         width: 250,
      decoration: BoxDecoration(
            borderRadius: _borderRadius,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end:Alignment.bottomCenter,
              colors: onPressed !=null? 
              AppColors.greenGradient : 
              AppColors.whiteGreenGradient,
              )
          ),
      child: 
      InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Align(child: Text( text, style: AppTextStyles.smallMediumText.copyWith(color: AppColors.white))),
      ),
    );
  }
}