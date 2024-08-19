import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:flutter_svg/svg.dart';

class CustomOfferedCard extends StatelessWidget {
  const CustomOfferedCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: ClipRRect(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/part0.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              left: -2,
              top: -1,
              child: SvgPicture.asset('assets/images/part1.svg'),
            ),
            Positioned(
                top: 20,
                right: 10,
                child: SvgPicture.asset('assets/images/Rectangle_50.svg')),
            Positioned(
                top: 125,
                right: 10,
                child: SvgPicture.asset('assets/images/Ellipse_6.svg')),
            Positioned(
                top: 135,
                right: 160,
                child: SvgPicture.asset('assets/images/Ellipse_8.svg')),
            Positioned(
              top: 5,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '50-40% OFF',
                    style: AppStyles.textStyle20.copyWith(color: Colors.white),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Now in\n', // First part of the first line
                            style: AppStyles.textStyle12
                                .copyWith(color: Colors.white)),
                        TextSpan(
                            text: '(product)', // second part on a new line
                            style: AppStyles.textStyle12
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'All colours',
                    style: AppStyles.textStyle14.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8,),
                  const TransparentWhiteBorderContainer(title: 'Shop Now',)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TransparentWhiteBorderContainer extends StatelessWidget {
  const TransparentWhiteBorderContainer({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border:Border.all(width: 2,color: Colors.white)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(title,style: AppStyles.textStyle14.copyWith(color: Colors.white),),
            const SizedBox(width: 6,),
            const Icon(Icons.arrow_right_alt_outlined,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
