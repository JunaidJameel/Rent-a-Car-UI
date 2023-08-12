import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class CalenderandTimeWidget extends StatefulWidget {
  final String calender;
  final String time;

  const CalenderandTimeWidget({
    Key? key,
    required this.time,
    required this.calender,
  }) : super(key: key);

  @override
  State<CalenderandTimeWidget> createState() => _CalenderandTimeWidgetState();
}

class _CalenderandTimeWidgetState extends State<CalenderandTimeWidget> {
  DateTime? _selectedDate;
  final DateFormat formatter = DateFormat('EEE, MMM d, y');

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            showCalendarPicker(context);
          },
          child: Container(
            height: 8.h,
            width: 43.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 37, 53, 61),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/calendar.png',
                    height: 3.h,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 3.w),
                  Container(
                    height: 4.h,
                    width: 1.5,
                    color: Colors.grey,
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0.w),
                        child: Text(
                          widget.calender,
                          style: theme.headline1!.copyWith(
                              color: Color.fromARGB(255, 207, 207, 207),
                              fontSize: 17.sp),
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Text(
                        controller.text.isEmpty
                            ? DateFormat('EEE, d, y')
                                .format(DateTime.now())
                                .toString()
                            : controller.text,
                        style: theme.headline1!.copyWith(
                          fontSize: 16.5.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
            onTap: () {
              showTimepicker(context);
            },
            child: Container(
              height: 8.h,
              width: 43.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 37, 53, 61),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 3.w, right: 3.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/time.png',
                      height: 3.h,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 3.w),
                    Container(
                      height: 4.h,
                      width: 1.5,
                      color: Colors.grey,
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget
                              .time, // Replace with your custom time widget string
                          style: theme.headline1!.copyWith(
                            fontSize: 16.1.sp,
                            color: Color.fromARGB(255, 207, 207, 207),
                          ),
                        ),
                        Text(
                          _timeOfDay.format(context).toString(),
                          style: theme.headline1!.copyWith(
                            fontSize: 17.5.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )),
      ],
    );
  }

  void showCalendarPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  primary: Colors.amber,
                  onPrimary: Colors.black,
                  onSurface: const Color.fromARGB(255, 37, 53, 61)),
              textTheme: Theme.of(context).textTheme.copyWith(
                    headline6: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 26.sp,
                        ),
                  ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ),
            child: child!,
          );
        });

    if (picked != null && picked != _selectedDate) {
      setState(() {
        controller.text = DateFormat('EEE, d, y').format(picked);
        ;
      });
    }
  }

  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 54);
  void showTimepicker(BuildContext context) {
    // Add context as a parameter
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.teal,
              background: const Color.fromARGB(255, 37, 53, 61),
              onPrimary: Colors.white,
              onSurface: const Color.fromARGB(255, 37, 53, 61),
            ),
            textTheme: Theme.of(context).textTheme.copyWith(
                  headline6: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 26.sp,
                      ),
                ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ),
          child: child!,
        );
      },
    ).then((value) {
      if (value != null) {
        // Check if value is not null before updating state
        setState(() {
          _timeOfDay = value;
        });
      }
    });
  }
}
