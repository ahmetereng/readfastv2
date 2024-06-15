import 'package:flutter/material.dart';
import "package:get/get.dart";
part "home_controller.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final c = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "how many times you clicked",
          ),
          Text(
            c.count.value.toString(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
      ),
    );
  }
}
