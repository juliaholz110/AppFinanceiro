

import 'package:appfinanceiro/features/sign_up/sign_up_page.dart';


import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}