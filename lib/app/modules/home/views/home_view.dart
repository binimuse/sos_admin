import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:sos_admin/common/appbar.dart';
import 'package:sos_admin/common/darwer.dart';
import 'package:sos_admin/common/staticdata.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    RxDouble? screenwidth = Get.width.obs;
    double? breakpoint = 600.0;
    AppConst obj = AppConst();
    
    final AppConst appConstcontroller = Get.put(AppConst());
    if (screenwidth >= breakpoint) {
      return Scaffold(
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: 260,
                    child: const DarwerCode()),
                Expanded(
                  child: SizedBox(
                    
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const AppBarCode(),
                        Expanded(
                          child: Obx(() {
                            Widget selectedPage = appConstcontroller
                                .page[appConstcontroller.pageselecter.value];
                            return selectedPage;
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: const AppBarCode(),
        drawer: const Drawer(width: 260, child: DarwerCode()),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Obx(() {
            Widget selectedPage =
                appConstcontroller.page[appConstcontroller.pageselecter.value];
            return selectedPage;
          }),
        ),
      );
    }
  }
}
