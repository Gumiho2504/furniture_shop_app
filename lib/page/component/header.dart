import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
