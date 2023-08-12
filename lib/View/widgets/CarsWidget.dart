import 'package:basic/View/Model/featuredCarModel.dart';
import 'package:basic/View/widgets/featuredCarsWidget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarsWidget extends StatelessWidget {
  const CarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(55),
          ),
          color: Color.fromARGB(255, 22, 21, 21),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 1.5.h,
            ),
            Container(
              height: 0.8.h,
              width: 18.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 79, 79, 79),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                children: [
                  Text(
                    'Top Brands',
                    style: theme.headline4!.copyWith(
                        letterSpacing: 0.8,
                        color: Colors.white,
                        fontSize: 21.sp),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 53, 53, 53),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 4.w, right: 2.w, top: 0.5.h, bottom: 0.5.h),
                      child: Row(
                        children: [
                          const Text(
                            'More',
                            style: TextStyle(
                                color: Colors.amber,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 0.5.w,
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 26.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 56, 57, 58)),
                    child: Center(
                        child: Image.asset(
                      'assets/icons/logo1.png',
                      height: 7.h,
                    )),
                  ),
                  Container(
                    height: 12.h,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    width: 26.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 56, 57, 58)),
                    child: Center(
                        child: Image.asset(
                      'assets/icons/merc.png',
                      height: 7.h,
                    )),
                  ),
                  Container(
                    height: 12.h,
                    width: 26.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 56, 57, 58)),
                    child: Center(
                        child: Image.asset(
                      'assets/icons/lambo.png',
                      height: 7.h,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                children: [
                  Text(
                    'Featured',
                    style: theme.headline4!
                        .copyWith(color: Colors.white, fontSize: 21.sp),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 56, 57, 58),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 4.w, right: 2.w, top: 0.5.h, bottom: 0.5.h),
                      child: Row(
                        children: [
                          const Text(
                            'More',
                            style: TextStyle(
                                color: Colors.amber,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 0.5.w,
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: SizedBox(
                height: 18.h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: FeaturedCarsModel.featuredCarList.length,
                  itemBuilder: (context, index) {
                    final items = FeaturedCarsModel.featuredCarList[index];
                    return FeaturedCarsWidget(
                      index: index,
                      items: items,
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 8.h,
              width: double.infinity,
              color: const Color.fromARGB(255, 56, 57, 58),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/home.png',
                      color: Colors.amber,
                      height: 3.h,
                    ),
                    Image.asset(
                      'assets/icons/bookmark.png',
                      color: Colors.grey,
                      height: 3.h,
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.grey,
                      size: 23.sp,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 24.sp,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
