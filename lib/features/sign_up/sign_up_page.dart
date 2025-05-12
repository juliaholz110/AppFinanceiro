import 'package:appfinanceiro/common/constants/app_colors.dart';
import 'package:appfinanceiro/common/constants/app_text_styles.dart';
import 'package:appfinanceiro/common/widgets/multiTextButton.dart';
import 'package:appfinanceiro/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
       
        children: [
           SizedBox( height: 40,),
          Text(
                  'Spend Smarter', 
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mediumText.copyWith( 
                    color: AppColors.darkGreen,
                      ) ,
                    ),
                Text('Save More' ,
                 textAlign: TextAlign.center,
                 style: AppTextStyles.mediumText.copyWith( 
                    color: AppColors.darkGreen,
                      ) , 
                    ),
                    Image.asset(
                     'assets/images/login_up.png'
                     ),
                        Form(child: Column(
                        children: [
                          CustomTextFormField(),
                           
                        ],
                        ),
                        ),
                        
                         Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: PrimaryButton(
                      text: 'Sign Up',
                      onPressed: () {} ,
                      ),
                    ),
                    
        
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
              
        
        
                    


        
                   
        ],
      ) ,
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

final defaultBorder = OutlineInputBorder();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
                        
        labelText: 'Your Name',
        border: defaultBorder,
        focusedBorder:defaultBorder,
        errorBorder: defaultBorder.copyWith(borderSide: BorderSide(color: Colors.red)),
        focusedErrorBorder: defaultBorder,
        enabledBorder: defaultBorder,
        disabledBorder: defaultBorder

      ),
    );
  }
}