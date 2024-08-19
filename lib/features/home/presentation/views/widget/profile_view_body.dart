import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_circular_widget.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularImageWidget(
                size: 97,
                imagePath: 'assets/images/jpg_profile_pic.jpg',
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height:21,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xfff9f9f9),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 29, top: 33, bottom: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello User Name',
                          style: AppStyles.textStyle16,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Text(
                          'Name',
                          style: AppStyles.textStyle12
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'User name',
                          style: AppStyles.textStyle12
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Text(
                          'Email',
                          style: AppStyles.textStyle12
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'info@gmail.com',
                          style: AppStyles.textStyle12
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Text(
                          'Phone number',
                          style: AppStyles.textStyle12
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '+963987654321',
                          style: AppStyles.textStyle12
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/shopping_app.png')
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          CustomButton(
            buttonName: 'Log out',
            onPressed: () {},
          ),
          const SizedBox(height: 11,)
        ],
      ),
    );
  }
}
