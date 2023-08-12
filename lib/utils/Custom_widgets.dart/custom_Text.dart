import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final int? letterSpacing;
  final String? headline;

  const CustomText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.letterSpacing,
    this.headline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final headlineStyle = headline == 'headline1'
        ? theme.headline1!
        : headline == 'headline2'
            ? theme.headline2!
            : headline == 'headline3'
                ? theme.headline3!
                : headline == 'headline4'
                    ? theme.headline4!
                    : headline == 'headline5'
                        ? theme.headline5!
                        : headline == 'headline6'
                            ? theme.headline6!
                            : theme.headline1!;

    return Text(
      text,
      style: headlineStyle.copyWith(
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing?.toDouble(),
      ),
    );
  }
}
