import 'package:get/get.dart';
import 'package:sos_admin/app/routes/app_pages.dart';
import 'package:sos_admin/config/app_assets.dart';

class SplashController extends GetxController {
  final count = 0.obs;
  var assets = AppAssets.logo_white;
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAllNamed(Routes.LOGIN);
      },
    );
    super.onInit();
  }

  void increment() => count.value++;
}
