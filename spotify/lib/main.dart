import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify/core/configs/routes/app_routes.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/presentation/pages/theme_selection/bloc/theme_selection_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationSupportDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => ThemeSelectionCubit()),
            ],
            child: BlocBuilder<ThemeSelectionCubit, ThemeMode>(
              builder: (context, mode) {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme.lightTheme,
                  darkTheme: AppTheme.darkTheme,
                  themeMode: mode,
                  routeInformationParser: router.routeInformationParser,
                  routerDelegate: router.routerDelegate,
                  routeInformationProvider: router.routeInformationProvider,
                );
              },
            ),
          );
        });
  }
}
