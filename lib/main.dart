import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/entrypoint.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Widget defaultHome = MainScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foodly',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            scaffoldBackgroundColor: kOffWhite,
              iconTheme: const IconThemeData(color: kDark),
            primarySwatch: Colors.grey
          ),
          home: defaultHome,
        );
      },
    );
  }
}
