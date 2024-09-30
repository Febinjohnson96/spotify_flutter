import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify/core/configs/theme/app_typography.dart';
import 'package:spotify/gen/assets.gen.dart';
import 'package:spotify/presentation/pages/theme_selection/bloc/theme_selection_cubit.dart';
import 'package:spotify/presentation/widgets/spotify_button.dart';

class ThemeSelectionScreen extends StatelessWidget {
  const ThemeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                width: double.infinity,
                child: Image.asset(
                  Assets.images.themeSelection.themeSelectionBg.path,
                  fit: BoxFit.fitWidth,
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: SvgPicture.asset(Assets.vectors.spotifyLogo),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Choose Mode',
                    style: AppTypography.spotify25Bold
                        .copyWith(color: Colors.white),
                  ),
                  Gap(30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => context.read<ThemeSelectionCubit>().updateTheme(ThemeMode.dark),
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 73.h,
                              width: 73.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF30393c).withOpacity(0.5),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: SvgPicture.asset(
                                    Assets.vectors.themeSelection.moon),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => context.read<ThemeSelectionCubit>().updateTheme(ThemeMode.light),
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 73.h,
                              width: 73.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF30393c).withOpacity(0.5),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: SvgPicture.asset(
                                    Assets.vectors.themeSelection.sun),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Dark Mode",
                        style: AppTypography.spotify17Medium400
                            .copyWith(color: Colors.white),
                      ),
                      Text("Light Mode",
                          style: AppTypography.spotify17Medium400
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  Gap(70.h),
                  SpotifyButton(
                    btntitle: 'Continue',
                    onTap: () {},
                  ),
                  Gap(30.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
