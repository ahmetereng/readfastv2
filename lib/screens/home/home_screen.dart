import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get.dart";
import 'package:readfastv2/constants/colors.dart';
import 'package:readfastv2/constants/padding.dart';
part "home_controller.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: AppPaddings.generalHeight,
          child: Column(
            children: [
              Padding(
                padding: AppPaddings.generalWidth,
                child: Row(
                  children: [
                    _buildSearchBar(),
                    20.horizontalSpace,
                    _buildSettingsIcon(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsIcon() {
    return SizedBox(
      width: 36.h,
      height: 36.h,
      child: GestureDetector(
        onTap: () {},
        child: Image.asset("assets/images/stttngs.png"),
      ),
    );
  }

  Widget _buildSearchBar() {
    return SizedBox(
      width: 279.w,
      height: 36.h,
      child: SearchBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}
