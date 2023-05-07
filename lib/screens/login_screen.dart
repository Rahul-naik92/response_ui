import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:response_ui/consts.dart';
import 'package:response_ui/widgets/button.dart';
import 'package:response_ui/widgets/login_field.dart';
import 'package:response_ui/widgets/social_button.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/signin_balls.png'),
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  labelText: 'Constinue with google',
                ),
                const SizedBox(
                  height: 20,
                ),
                const SocialButton(
                  iconPath: 'assets/svgs/f_logo.svg',
                  labelText: 'Constinue with Facebook',
                  horizontalPadding: 90,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'or',
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 15,
                ),
                const LoginField(hintText: ' Email',),
                const SizedBox(
                  height: 15,
                ),
                const LoginField(hintText: ' Password',),
                const SizedBox(
                  height: 20,
                ),
    
                const GradientButton(),
                const SizedBox(
                  height: 15,
                ),
                 Text.rich(
                          TextSpan(
                            text: 'Dont have an account? ',
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Create Account',
                                style: const TextStyle(
                                  color: Constants.whiteColor,
                                  fontWeight: FontWeight.bold
                                 
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    
                                  },
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                  height: 10,
                ),
              
              const Text(
                  'Forgot Password?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
