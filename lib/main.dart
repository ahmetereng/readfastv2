import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'package:readfastv2/constants/colors.dart';
import 'package:readfastv2/constants/routes.dart';
import 'package:readfastv2/screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en")],
      fallbackLocale: const Locale("en"),
      path: "assets/language",
      useOnlyLangCode: true,
      assetLoader: const JsonAssetLoader(),
      startLocale: const Locale("en"),
      child: const ReadFast(),
    ),
  );
}

class ReadFast extends StatelessWidget {
  const ReadFast({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      builder: (ctx, c) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        getPages: [
          GetPage(
            name: Routes.home,
            page: () => const HomeScreen(),
          ),
        ],
      ),
    );
  }
}
