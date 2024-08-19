import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/app_assets.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.headerImg,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  bottom: 10,
                  child: Text(
                    'Welcome Back!',
                    style: AppStyles.textStyle24,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 44),
                const CustomTextField(
                  label: 'Username or Email',
                  prefix: Icon(Icons.person),
                ),
                const SizedBox(height: 31),
                const CustomTextField(
                  label: 'Password',
                  prefix: Icon(Icons.lock),
                  suffix: Icon(Icons.remove_red_eye),
                  obscureText: true,
                ),
                const SizedBox(height: 9),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Text(
                        'Forgot Password?',
                        style: AppStyles.textStyle12.copyWith(color: Colors.red),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kHomeView);
                    },
                    buttonName: 'Login'),
                const SizedBox(height: 29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Create An Account ',
                      style: AppStyles.textStyle14,
                    ),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Text(
                        'Sign Up',
                        style: AppStyles.textStyle14.copyWith(
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height: 20), // Optional extra space at the bottom
              ],
            ),
          ),
        ),
      ],
    );
  }
}
