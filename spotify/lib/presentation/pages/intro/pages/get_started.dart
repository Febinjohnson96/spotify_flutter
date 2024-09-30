import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify/gen/assets.gen.dart';
import 'package:spotify/gen/fonts.gen.dart';
import 'package:spotify/presentation/widgets/spotify_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.images.getStarted.getstarted.path,
            width: 400.w,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: SvgPicture.asset(
                  Assets.vectors.spotifyLogo,
                  width: 196.w,
                  height: 50.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontFamily: FontFamily.satoshi,
                      fontSize: 25.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Gap(22.h),
                Text(
                  textAlign: TextAlign.center,
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  style: TextStyle(
                    fontFamily: FontFamily.satoshi,
                    color: const Color(0xFF797979),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Gap(40.h),
                const SpotifyButton(
                  btntitle: 'Get Started',
                ),
                Gap(40.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
