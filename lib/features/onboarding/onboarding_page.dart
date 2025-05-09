
import 'package:appfinanceiro/common/constants/app_colors.dart';
import 'package:appfinanceiro/common/constants/app_text_styles.dart';
import 'package:appfinanceiro/common/widgets/multiTextButton.dart';
import 'package:appfinanceiro/common/widgets/primary_button.dart';

import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox( height: 40,),
          Expanded(
            flex: 2,
            child:
             Container(
              color: AppColors.darkWhite,
               child: Image.asset('assets/images/dimdim.png') ,
             
             )
             ),
              Text(
                'Spend Smarter', 
                style: AppTextStyles.mediumText.copyWith( 
                  color: AppColors.darkGreen,
                    ) ,
                  ),
              Text('Save More' , style: AppTextStyles.mediumText.copyWith( 
                  color: AppColors.darkGreen,
                    ) , 
                  ),
                 

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: PrimaryButton(
                    text: 'Get Started',
                    onPressed: () {} ,
                    ),
                  ),
                  SizedBox(height: 10,),


                  MultiTextButton( 
                    onPressed: () => print('hello'),
                    children: [
                        Text('Already have account? ',
                        style: AppTextStyles.smallText.copyWith(color: AppColors.blackGrey),
                        ),
                         Text('Log in',
                        style: AppTextStyles.smallText.copyWith(color: AppColors.darkGreen),
                        ),
                  ],),
            

      
                    SizedBox(height: 40,),

        ],
      ),
    );
  }
}




