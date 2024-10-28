import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app/style/style.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: _addToCartButton(),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(context),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 300.h,
                margin: EdgeInsets.all(20.w),
                width: double.infinity,
                // color: Colors.cyan,
                child: Image.asset(
                  "assets/images/sofa.png",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 100.h,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      3,
                      (index) => Container(
                            height: 100.h,
                            width: 100.h,
                            // color: Colors.amber,
                            child: Image.asset(
                              "assets/images/sofa.png",
                              fit: BoxFit.contain,
                            ),
                          )),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              _nameAndPrice(),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "The names array contains predefined names to be assigned to each cell in the matrix.The nested for loop iterates over each row and column, assigning a name from the names array to each matrix element.The nameIndex variable ensures that each name from the list is added sequentially to the matrix.",
                  style: bodyText1,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  _header(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30.h,
              ),
            ),
            Icon(
              Icons.favorite_border,
              size: 30.h,
            )
          ],
        ),
      );

  _nameAndPrice() => Container(
        height: 50.h,
        // color: Colors.cyan,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Draken",
              style: headline1,
            ),
            Container(
              width: 120.w,
              height: 50.h,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$360",
                    style: GoogleFonts.montserrat(
                        fontSize: 26.h, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    width: 20.w,
                    height: 2.h,
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
      );

  _addToCartButton() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        height: 70.h,
        // color: Colors.amber,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.badge,
                  size: 30.h,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Add to Cart",
                  style: GoogleFonts.montserrat(
                      fontSize: 20.h,
                      fontWeight: FontWeight.w500,
                      color: background),
                ),
              ],
            )),
      ),
    );
  }
}
