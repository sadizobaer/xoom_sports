import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/utilities/app_theme.dart';
import 'app/routes/app_pages.dart';
import 'app/utilities/initial_bindings.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          builder: (context, widget) {
            ScreenUtil.init(
              context,
              designSize: const Size(360, 690),
            );
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.0,
              ),
              child: widget!,
            );
          },
          initialRoute: AppPages.initial,
          initialBinding: InitialBindings(),
          theme: AppTheme.primaryTheme(),
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
        );
      },
    ),
  );
}
