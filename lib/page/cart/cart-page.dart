import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app/style/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: _buildBottomNav(),
      body: SafeArea(
          child: Column(
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
                "2 items",
                style: GoogleFonts.montserrat(
                    fontSize: 16.h, fontWeight: FontWeight.w600),
              )
            ],
          ),

          _cartBox(),
          _cartBox(),
        ],
      )),
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
              "Carts",
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

  _buildBottomNav() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 90.h,
        // color: Colors.cyan,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 0.5, color: Colors.black45))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // total amount
            SizedBox(
              width: 200.w,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Amount Price",
                    style: bodyText1,
                  ),
                  Text(
                    "\$200",
                    style: headline3,
                  )
                ],
              ),

              // check out Button
            ),
            _checkOutButton()
          ],
        ),
      );

  _checkOutButton() => Container(
        height: 60.h,
        width: 150.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(5.h)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Check Out",
              style: GoogleFonts.montserrat(color: background, fontSize: 16.h),
            ),
          ],
        ),
      );

  _cartBox() {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.all(10.h),
      height: 120.h,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Icons.delete,
                          size: 30.h,
                        )
                      ],
                    ),
                  ),
                  // qauntity
                  Container(
                    height: 30.h,
                    //color: Colors.green,
                    width: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // increas button

                        Container(
                          height: 25.h,
                          width: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.h),
                              color: const Color(0xFFECECEC)),
                          child: Icon(
                            Icons.remove,
                            size: 15.h,
                          ),
                        ),

                        Text(
                          "5",
                          style: bodyText1,
                        ),
                        // decreas button
                        Container(
                          height: 25.h,
                          width: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.h),
                              color: const Color(0xFFECECEC)),
                          child: Icon(
                            Icons.add,
                            size: 15.h,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
