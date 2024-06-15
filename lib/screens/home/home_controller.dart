part of "home_screen.dart";

class HomeController extends GetxController {
  Rx<int> count = 0.obs;
  void increment() {
    count.value++;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
