import 'package:chat_page_ui/home.dart';
import 'package:chat_page_ui/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        debugShowCheckedModeBanner: false,
        title: 'Dating App',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Constant.kprimaryColor),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Constant.kprimaryColor,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Constant.kprimaryColor,
            ),
          ),
          primaryIconTheme: const IconThemeData(
            color: Color(0xffF74F70),
          ),
          textTheme: GoogleFonts.poppinsTextTheme(),
          iconTheme: const IconThemeData(
            color: Color(0xffF74F70),
          ),
        ),
        home: const Home(),
        // OnBoardScreen(),
      ),
    );
  }
}
