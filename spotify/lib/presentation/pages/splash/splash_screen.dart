import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify/core/configs/routes/route_names.dart';
import 'package:spotify/gen/assets.gen.dart';
import 'package:spotify/utils/logger/app_logger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          Assets.vectors.spotifyLogo,
          width: 196.w,
          height: 56.h,
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3), () {
      AppLogger.debuglog('Routing to getStarted ');
      context.go(RouteNames.getStarted);
    });
  }
}
