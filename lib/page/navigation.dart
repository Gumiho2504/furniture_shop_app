import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app/page/cart/cart-page.dart';
import 'package:furniture_shop_app/page/favoritePage/favorite-page.dart';
import 'package:furniture_shop_app/page/home/home-page.dart';
import 'package:furniture_shop_app/page/setting/setting-page.dart';
import 'package:furniture_shop_app/provider/navigation-provider.dart';
import 'package:furniture_shop_app/style/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class NavigetionApp extends StatelessWidget {
  const NavigetionApp({super.key});

  @override
  Widget build(BuildContext context) {
    final navP = Provider.of<NavigationProvider>(context, listen: true);
    final bottomBarLabelList = [
      "Home",
      "Carts",
      "Favorite",
      "Setting",
    ];
    final bottomBarIcon = [
      Iconsax.home,
      Icons.badge,
      Iconsax.heart,
      Iconsax.setting
    ];

    final _page = [
      const HomePage(),
      const CartPage(),
      const FavoritePage(),
      const SettingPage()
    ];

    _buttonBottomBarItem(String label, Icon icon, int selectIndex) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              navP.changePageIndex(selectIndex);
            },
            icon: icon,
            iconSize: 25.h,
            color: navP.pageIndex == selectIndex
                ? Colors.black
                : secondary.withOpacity(0.7),
          ),
          Text(
            label,
            style: GoogleFonts.montserrat(
                color: navP.pageIndex == selectIndex
                    ? Colors.black
                    : secondary.withOpacity(0.7),
                fontSize: 12.h),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: background,
      body: _page[navP.pageIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 90.h,
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          color: background,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  bottomBarIcon.length,
                  (index) => _buttonBottomBarItem(bottomBarLabelList[index],
                      Icon(bottomBarIcon[index]), index))),
        ),
      ),
    );
  }
}
