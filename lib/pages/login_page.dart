import 'package:flutter/material.dart';
import 'package:sneaker_app/components/app_button.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // LOGO
                  Image.asset('images/nike_lg.png'),

                  // TITLE 
                  const Text(
                    'Just do it',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w900
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // SUBTITTLE
                  Text(
                    'Brand new sneakers and custom kicks made with premium quality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey[500]
                    ),
                  ),
                  
                  const SizedBox(
                    height: 40,
                  ),

                  // LOGIN BUTTON
                  AppButton(
                    buttonText: 'Shop Now',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const HomePage())
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}