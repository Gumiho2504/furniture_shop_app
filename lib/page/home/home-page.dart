import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app/style/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabViewList = [
    "All items",
    "Sofas",
    "Chair",
    "Lamp",
    "Table",
    "Fans",
    "Clocks"
  ];

  int currentTabViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(430, 932));
    return Scaffold(
        backgroundColor: background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Column(
              children: [
                _buildAppBar(),
                SizedBox(
                  height: 20.h,
                ),
                _tapScrollBar(),
                SizedBox(
                  height: 20.h,
                ),
                _bigProductBox(),
                SizedBox(
                  height: 20.h,
                ),
                _section(),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 260.h,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => _smallProductBox()),
                )
              ],
            ),
          ),
        ));
  }

  _section() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Featured",
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
        ],
      ),
    );
  }

  _buildAppBar() => Container(
        height: 60.h,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        //color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Best",
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
              ],
            ),
            Icon(Iconsax.search_normal, size: 30.h)
          ],
        ),
      );

  _tapScrollBar() => SizedBox(
        width: double.infinity,
        height: 50.h,
        // color: Colors.amber,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 2.h,
              width: 25.w,
              color: textPrimary,
            ),
            SizedBox(
              width: 10.w,
            ),
            Flexible(
                child: Container(
              alignment: Alignment.center,
              //  color: Colors.blue,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabViewList.length,
                  itemBuilder: (context, index) =>
                      _textButton(tabViewList[index], index)),
            ))
          ],
        ),
      );

  _textButton(String name, int index) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: background,
            foregroundColor: textPrimary,
            disabledBackgroundColor: background,
            overlayColor: background,
            shadowColor: background,
            textStyle: GoogleFonts.montserrat(
                fontSize: 16.h,
                fontWeight: index == currentTabViewIndex
                    ? FontWeight.w600
                    : FontWeight.w400)),
        onPressed: () {
          setState(() {
            currentTabViewIndex = index;
          });
        },
        child: Text(name));
  }

  _bigProductBox() {
    return Container(
      height: 200.h,
      width: 320.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
              color: textSecondary.withOpacity(0.5),
              offset: Offset.zero,
              blurRadius: 0.01,
              spreadRadius: 0.01)
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 130.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.h),
                color: textSecondary.withOpacity(0.1),
                image: const DecorationImage(
                    scale: 2,
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/sofa.png"))),
          ),
          Container(
            height: 60.h,
            // color: Colors.cyan,
            margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                  //color: Colors.cyan,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Draken Design",
                        style: headline4,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$214",
                            style: GoogleFonts.montserrat(
                                color: Colors.amber, fontSize: 14.h),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "\$250",
                            style: GoogleFonts.montserrat(
                                color: textSecondary,
                                fontSize: 14.h,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                _byNowButton()
              ],
            ),
          ),
        ],
      ),
    );
  }

  _smallProductBox() {
    return Container(
      height: 230.h,
      width: 200.w,
      margin: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
              color: textSecondary.withOpacity(0.5),
              offset: Offset.zero,
              blurRadius: 0.01,
              spreadRadius: 0.01)
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 160.h,
            margin: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.h),
                color: textSecondary.withOpacity(0.1),
                image: const DecorationImage(
                    scale: 2,
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/sofa.png"))),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 60.h,
            // color: Colors.cyan,
            margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                  //color: Colors.cyan,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Draken Design",
                        style: headline5,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$214",
                            style: GoogleFonts.montserrat(
                                color: Colors.amber, fontSize: 12.h),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          // Text(
                          //   "\$250",
                          //   style: GoogleFonts.montserrat(
                          //       color: textSecondary,
                          //       fontSize: 14.h,
                          //       decoration: TextDecoration.lineThrough),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                _addToCartButton()
              ],
            ),
          ),
        ],
      ),
    );
  }

  _byNowButton() => SizedBox(
        height: 40.h,
        //color: Colors.cyan,
        child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: textPrimary,
                foregroundColor: Colors.white,
                disabledBackgroundColor: background,
                overlayColor: background,
                shadowColor: background,
                textStyle: GoogleFonts.montserrat(
                    fontSize: 16.h, fontWeight: FontWeight.w600)),
            child: Text("Buy now")),
      );

  _addToCartButton() {
    return Container(
      height: 50.h,
      width: 50.h,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: Icon(
        Iconsax.add,
        color: background,
      ),
    );
  }
}
