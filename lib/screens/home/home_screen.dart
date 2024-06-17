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
          body: Column(children: [
            Padding(
              padding: AppPaddings.generalWidth,
              child: Row(
                children: [
                  const SearchBarWidget(),
                  _buildSettingsIcon(),
                ],
              ),
            ),
          ])),
    );
  }

  Widget _buildSettingsIcon() {
    return SizedBox(
      width: 36.h,
      height: 36.h,
      child: IconButton(
          onPressed: () {}, icon: Image.asset("assets/images/stttngs.png")),
    );
  }
}

/* class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 67.h, 20.w, 0),
      child: 
    );
  }
} */

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 279.w,
      height: 36.h,
      child: const SearchBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}
