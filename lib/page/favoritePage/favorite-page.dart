import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app/style/style.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Column(
          children: [
            _buildAppBar(),
            SizedBox(
              height: 2.h,
            ),

            //padding: EdgeInsets.only(left: 22.w),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 2.h,
                  width: 25.w,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "2 favorites",
                  style: GoogleFonts.montserrat(
                      fontSize: 16.h, fontWeight: FontWeight.w600),
                )
              ],
            ),

            _favoriteCart(),
            _favoriteCart()
          ],
        ),
      ),
    );
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
              "Favorite",
              style: GoogleFonts.montserrat(
                  fontSize: 26.h, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Furniture",
              style: GoogleFonts.montserrat(
                  fontSize: 26.h, fontWeight: FontWeight.w500),
            )

            // Icon(Iconsax.search_normal, size: 30.h)
          ],
        ),
      );

  _favoriteCart() {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.all(10.h),
      height: 100.h,
      width: double.infinity,
      //color: Colors.cyan,
      decoration: const BoxDecoration(
          // color: Colors.cyan,
          border: Border(
              bottom: BorderSide(
                  width: 0.5,
                  color: Colors.black45,
                  style: BorderStyle.solid))),
      child: Row(
        children: [
          SizedBox(
            width: 150.w,
            //color: Colors.amber,
            child: Image.asset("assets/images/chair.png"),
          ),
          SizedBox(
            width: 10.h,
          ),
          Expanded(
            child: Container(
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product name
                  Text(
                    "Sofars",
                    style: GoogleFonts.montserrat(
                        fontSize: 20.h, fontWeight: FontWeight.w500),
                  ),
                  // SizedBox(
                  //   height: 5.h,
                  // ),

                  //unitPrice

                  Container(
                    alignment: Alignment.topLeft,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$670",
                          style: GoogleFonts.montserrat(
                              fontSize: 18.h, fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.favorite,
                          size: 30.h,
                        )
                      ],
                    ),
                  ),
                  // qauntity
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
