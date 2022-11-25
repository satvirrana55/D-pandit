import 'package:digitalastro/router/my_router.dart';
import 'package:digitalastro/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 928),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Astro pandit Om',
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
              // textTheme: GoogleFonts.poppinsTextTheme(
              //   Theme.of(context).textTheme,
              // ),
              fontFamily: 'Poppins',
              primaryColor: AppColors.appPrimaryColor,
              errorColor: AppColors.red),
          // home: UserAllBookingsScreen(),
          initialRoute: '/',
          getPages: MyRouter.route,
          // onGenerateRoute: RouteGen erator.generateRoute,
        );
      },
    );
  }
}
