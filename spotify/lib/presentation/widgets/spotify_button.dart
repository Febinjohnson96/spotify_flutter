import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/gen/fonts.gen.dart';

class SpotifyButton extends StatelessWidget {
  const SpotifyButton({
    super.key,
    this.btntitle,
  });
  final String? btntitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 70.h,
        width: 329.w,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(btntitle ?? '',
              style: TextStyle(
                  fontFamily: FontFamily.satoshi,
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
