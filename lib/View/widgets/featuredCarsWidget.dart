import 'package:basic/View/DetailsScreen.dart';
import 'package:basic/View/Model/featuredCarModel.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FeaturedCarsWidget extends StatelessWidget {
  final FeaturedCarsModel items;
  final int index;
  const FeaturedCarsWidget(
      {super.key, required this.index, required this.items});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(index: index, items: items),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 4.w),
        width: 45.w,
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Positioned(
              top: 4.h,
              child: Container(
                height: 14.h,
                margin: EdgeInsets.only(right: 4.w),
                width: 45.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 56, 57, 58)),
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        items.carName,
                        style: theme.headline1!.copyWith(
                            letterSpacing: 0.5,
                            fontSize: 17.5.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        items.pricePerDay,
                        style: theme.headline2!.copyWith(
                            letterSpacing: 1.5,
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 3.5.w,
              child: Container(
                height: 8.h,
                margin: EdgeInsets.only(right: 0.w),
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(items.img), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
