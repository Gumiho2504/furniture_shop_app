import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app/page/detail/product-detail-page.dart';
import 'package:furniture_shop_app/page/home/home-page.dart';
import 'package:furniture_shop_app/page/navigation.dart';
import 'package:furniture_shop_app/provider/navigation-provider.dart';
import 'package:furniture_shop_app/style/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const furniture_app());
}

class furniture_app extends StatelessWidget {
  const furniture_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NavigationProvider())],
      child: ScreenUtilInit(
          designSize:
              const Size(430, 932), // iPhone 15 Pro screen size (design size)
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return const MaterialApp(home: NavigetionApp());
          }),
    );
  }
}

Widget TextSizeStyleView() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "headline 1",
        style: headline1,
      ),
      Text(
        "headline 2",
        style: headline2,
      ),
      Text(
        "headline 3",
        style: headline3,
      ),
      Text(
        "bodytext 1",
        style: bodyText1,
      ),
      Text(
        "bodytext 2",
        style: bodyText2,
      ),
      Text(
        "caption text",
        style: caption,
      ),
    ],
  );
}
