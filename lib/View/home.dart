import 'package:animate_do/animate_do.dart';
import 'package:basic/View/widgets/CarsWidget.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Text(
              'Your Location',
              style: theme.headline1!.copyWith(
                color: const Color.fromARGB(255, 101, 101, 101),
                fontWeight: FontWeight.w200,
                fontSize: 17.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: FadeInLeft(
                    delay: const Duration(seconds: 1),
                    from: 100,
                    duration: Duration(milliseconds: 1000),
                    child: Image.asset(
                      'assets/icons/location.png',
                      color: const Color.fromARGB(255, 255, 164, 7),
                      height: 3.5.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: FadeInLeft(
                    delay: const Duration(seconds: 1),
                    from: 100,
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      'Miramer, San Diego',
                      style: theme.headline6!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 22.5.sp,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                FadeInRight(
                  from: 100,
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 109, 109, 109),
                          width: 1.2),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/img/profile.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Text(
              'Search Your Dream\nSuper Car to Ride',
              style: theme.headline4!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.sp,
                  letterSpacing: 1.2),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Your Dream Car',
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 90, 90, 90),
                          fontWeight: FontWeight.w700,
                          fontSize: 16.5.sp),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                            left: 4.w, top: 0.5.h, bottom: 0.5.h, right: 2.w),
                        child: Image.asset(
                          'assets/icons/search.png',
                          color: const Color.fromARGB(255, 64, 64, 64),
                          height: 3.5.h,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 64, 64, 64),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 64, 64, 64),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.5.w,
                ),
                Container(
                  height: 7.2.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 164, 7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset(
                      'assets/icons/filter1.png',
                      height: 1.h.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const CarsWidget(),
        ],
      ),
    );
  }
}
