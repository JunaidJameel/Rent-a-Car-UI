import 'package:basic/View/Model/carPartsModel.dart';
import 'package:basic/View/Model/featuredCarModel.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarPartsWidget extends StatelessWidget {
  final CarPartsModel caritems;
  final int index;
  const CarPartsWidget(
      {super.key, required this.index, required this.caritems});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(right: 3.w),
      width: 28.w,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          Positioned(
            top: 6.h,
            child: Container(
              height: 13.h,
              margin: EdgeInsets.only(right: 1.w),
              width: 28.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 56, 57, 58),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      caritems.carparts1,
                      style: theme.headline4!.copyWith(
                          letterSpacing: 0.5,
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      caritems.carparts2,
                      style: theme.headline2!.copyWith(
                          letterSpacing: 1.5,
                          fontSize: 17.sp,
                          color: Colors.amber,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 1.h,
            left: 3.w,
            child: Container(
              height: 9.h,
              margin: EdgeInsets.only(right: 0.w),
              width: 22.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(caritems.img), fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
