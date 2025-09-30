import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class GenreItemWidget extends StatelessWidget {
  final String genreName;

  const GenreItemWidget({super.key, required this.genreName});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 72.w,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 10.w),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.25),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          color: const Color(0x24D9D9D9),
          borderRadius: BorderRadius.circular(24.r),
        ),

        child: Center(
          child: Text(
            genreName,
            style: TextStyles.ralewayCaptionMedium11.copyWith(
                color: ColorsManager.backgroundWhite,
              ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
