// ignore_for_file: deprecated_member_use, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sos_admin/common/staticdata.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_text_styles.dart';
import 'package:sos_admin/gen/assets.gen.dart';

class DarwerCode extends StatefulWidget {
  const DarwerCode({Key? key}) : super(key: key);

  @override
  State<DarwerCode> createState() => _DarwerCodeState();
}

class _DarwerCodeState extends State<DarwerCode> {
  AppConst obj = AppConst();
  final AppConst controller = Get.put(AppConst());

  final screenwidth = Get.width;
  bool ispresent = false;

  static const breakpoint = 600.0;

  @override
  Widget build(BuildContext context) {
    if (screenwidth >= breakpoint) {
      setState(() {
        ispresent = true;
      });
    }

    return GetBuilder<AppConst>(builder: (controller) {
      return SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColors.whiteOff)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: ispresent ? 30 : 15,
                    top: ispresent ? 24 : 20,
                    bottom: ispresent ? 10 : 12),
                child: InkWell(
                  onTap: () {
                    controller.changePage(0);
                    Get.back();
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.logo,
                        height: 48,
                        width: 48,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDivider(title: 'GENERAL'),
                          SizedBox(
                            height: ispresent ? 10 : 8,
                          ),
                          _buildSingletile(
                              header: "Dashboards",
                              iconpath: Assets.icons.setting,
                              index: 0,
                              ontap: () {
                                controller.changePage(0);
                              }),
                          SizedBox(
                            height: ispresent ? 10 : 8,
                          ),
                          _buildSingletile(
                              header: "SOS",
                              iconpath: Assets.icons.sos,
                              index: 0,
                              ontap: () {
                                controller.changePage(2);
                              }),
                          SizedBox(
                            height: ispresent ? 10 : 8,
                          ),
                          _buildSingletile(
                              header: "Rights",
                              iconpath: Assets.icons.receipt,
                              index: 0,
                              ontap: () {
                                controller.changePage(3);
                              }),
                          SizedBox(
                            height: ispresent ? 10 : 8,
                          ),
                          _buildSingletile(
                              header: "Laws",
                              iconpath: Assets.icons.receipt,
                              index: 0,
                              ontap: () {
                                controller.changePage(3);
                              }),
                          SizedBox(
                            height: ispresent ? 10 : 8,
                          ),
                          _buildSingletile(
                              header: "Emergency",
                              iconpath: Assets.icons.emergency,
                              index: 0,
                              ontap: () {
                                controller.changePage(3);
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildSingletile(
      {required String header,
      required String iconpath,
      required int index,
      required void Function() ontap}) {
    return Obx(() => ListTileTheme(
          horizontalTitleGap: 12.0,
          dense: true,
          child: ListTile(
            hoverColor: Colors.transparent,
            onTap: ontap,
            title: Text(
              header,
              style: AppTextStyles.captionRegular
                  .copyWith(color: AppColors.black, fontSize: 16),
            ),
            leading: SvgPicture.asset(iconpath,
                height: 18,
                width: 18,
                color: controller.pageselecter.value == index
                    ? AppColors.primary
                    : AppColors.primary),
            trailing: const SizedBox(),
            contentPadding: EdgeInsets.symmetric(
                vertical: ispresent ? 5 : 2, horizontal: 8),
          ),
        ));
  }

  Widget _buildDivider({required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: ispresent ? 15 : 10,
            width: ispresent ? 230 : 260,
            child:
                Center(child: Divider(color: AppColors.grayLight, height: 1))),
        SizedBox(
          height: ispresent ? 15 : 10,
        ),
        Text(
          title,
          style: AppTextStyles.titleBold
              .copyWith(color: AppColors.black, fontSize: 12),
        ),
        SizedBox(
          height: ispresent ? 10 : 8,
        ),
      ],
    );
  }
}

//9c9caa