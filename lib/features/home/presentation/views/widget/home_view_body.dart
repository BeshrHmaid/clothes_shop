import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/app_assets.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/custom_icon_widget.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_circular_widget.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_offered_card.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_product_card.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_search_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List icons = [
    'assets/images/beauty.png',
    'assets/images/fashion.png',
    'assets/images/kids.png',
    'assets/images/men.png',
    'assets/images/women.png'
  ];
  final List titles = ['Beauty', 'Fashion', 'Kids', 'Men', 'Women'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomCircularWidget(
                  isSvg: true,
                  widgetSize: 42,
                  bgColor: Color(0xfff9f9f9),
                  iconPath: 'assets/images/Vector.svg',
                  iconSize: 15,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.appIcon),
                    const SizedBox(width: 9),
                    Text(
                      'Stylish',
                      style: AppStyles.textStyle18.copyWith(
                        fontFamily: 'LibreCaslonText',
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                CircularImageWidget(
                  size: 40,
                  imagePath:'assets/images/jpg_profile_pic.jpg',
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kProfileView);
                  },
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 21)),
          const SliverToBoxAdapter(child: CustomSearchTextField()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 2,
                  height: 20,
                  color: kPrimaryColor,
                  margin: const EdgeInsets.only(right: 8),
                ),
                Text(
                  'Category',
                  style:
                      AppStyles.textStyle16.copyWith(fontFamily: 'Montserrat'),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 76,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Column(
                      children: [
                        CircularImageWidget(
                          size: 56,
                          imagePath: icons[index],
                        ),
                        const SizedBox(height: 4),
                        Text(titles[index], style: AppStyles.textStyle10),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 160,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomOfferedCard(),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: _currentPage == index ? 12 : 8,
                  height: _currentPage == index ? 12 : 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color:
                        _currentPage == index ? Color(0xffffa3b3) : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deal of the Day',
                          style: AppStyles.textStyle20
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/watch.svg'),
                            Text(
                              '22h 55m 20s remaining',
                              style: AppStyles.textStyle14
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const TransparentWhiteBorderContainer(title: 'View All'),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 274,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10, top: 16),
                    child: ProductCard(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
