import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app/style/style.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: background,
      body: Column(
        children: [_buildAppBar()],
      ),
    ));
  }

  _buildAppBar() => Container(
        height: 60.h,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        //color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Setting",
              style: GoogleFonts.montserrat(
                  fontSize: 26.h, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Profile",
              style: GoogleFonts.montserrat(
                  fontSize: 26.h, fontWeight: FontWeight.w500),
            )
// ggg
            // Icon(Iconsax.search_normal, size: 30.h)
          ],
        ),
      );
}
