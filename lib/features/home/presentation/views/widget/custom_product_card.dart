import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 171,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/t_shirt.png', // Replace with actual image URL
                width: double.infinity,
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset('assets/images/lov_Icon.svg'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text('Women Printed Kurta',
              style:
                  AppStyles.textStyle12.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 5),
          const Text(
            'Neque porro quisquam est qui dolorem ipsum quia',
            style: AppStyles.textStyle10,
          ),
          const SizedBox(height: 10),
          Text('\$1500',
              style:
                  AppStyles.textStyle12.copyWith(fontWeight: FontWeight.w800)),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                '\$2499',
                style: AppStyles.textStyle12.copyWith(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                '40% Off',
                style: AppStyles.textStyle12.copyWith(color: Colors.red),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 14,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 14,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 14,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 14,
              ),
              const Icon(
                Icons.star_half,
                color: Colors.grey,
                size: 14,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '56890',
                style: AppStyles.textStyle10.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
