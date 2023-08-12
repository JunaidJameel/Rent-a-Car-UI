// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:basic/View/Model/carPartsModel.dart';
import 'package:basic/View/Model/featuredCarModel.dart';
import 'package:basic/View/bookCarScreen.dart';
import 'package:basic/View/widgets/carPartsWidget.dart';
import 'package:basic/View/widgets/featuredCarsWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailScreen extends StatelessWidget {
  final FeaturedCarsModel items;
  final int index;
  const DetailScreen({super.key, required this.index, required this.items});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        child: Stack(
          children: [
            Container(
              height: 45.h,
              width: 100.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/bg map.jpg'),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 2.w,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 24.sp,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Car Details',
                        style: theme.headline3!.copyWith(
                            fontSize: 21.sp,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 35.h,
              child: Container(
                height: 70.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(45)),
                  color: Color.fromARGB(255, 22, 21, 21),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 53, 53, 53),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 4.w, right: 4.w, top: 1.h, bottom: 1.h),
                              child: Text(
                                'SUV Car',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.amber,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 53, 53, 53),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 4.w, right: 4.w, top: 1.h, bottom: 1.h),
                              child: Text(
                                'Off Road',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.amber,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/icons/lambo.png',
                            height: 6.5.h,
                          ),
                          SizedBox(
                            width: 6.w,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        items.carName + ' (2022)',
                        style: theme.headline4!.copyWith(
                          fontSize: 20.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        items.pricePerDay,
                        style: theme.headline4!.copyWith(
                          letterSpacing: 1.5,
                          fontSize: 19.5.sp,
                          // ignore: prefer_const_constructors
                          color: const Color.fromARGB(255, 255, 196, 0),
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      FadeInLeft(
                        child: SizedBox(
                          height: 19.h,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: CarPartsModel.carpartsList.length,
                            itemBuilder: (context, index) {
                              final caritems =
                                  CarPartsModel.carpartsList[index];
                              return CarPartsWidget(
                                index: index,
                                caritems: caritems,
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BookCarScreen(index: index, items: items),
                              ),
                            );
                          },
                          child: FadeInUp(
                            delay: Duration(milliseconds: 200),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.orange,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    'Book Car',
                                    style: theme.headline4!.copyWith(
                                      fontSize: 19.sp,
                                      color:
                                          const Color.fromARGB(255, 53, 53, 53),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            index == 0
                ? Positioned(
                    top: 18.h,
                    left: 10.w,
                    child: SlideInRight(
                      duration: Duration(milliseconds: 1900),
                      delay: Duration(milliseconds: 100),
                      child: Container(
                        height: 25.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            //  color: Colors.teal,
                            image: DecorationImage(
                                image: AssetImage('assets/img/detailImg.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  )
                : Positioned(
                    top: 18.h,
                    child: FadeInLeft(
                      child: Container(
                        height: 25.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            //  color: Colors.teal,
                            image: DecorationImage(
                                image: AssetImage(items.img),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
