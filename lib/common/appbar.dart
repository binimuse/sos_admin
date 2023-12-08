// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sos_admin/common/staticdata.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_sizes.dart';
import 'package:sos_admin/config/app_text_styles.dart';
import 'package:sos_admin/gen/assets.gen.dart';

class AppBarCode extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCode({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<AppBarCode> createState() => _AppBarCodeState();
}

class _AppBarCodeState extends State<AppBarCode> {
  bool search = false;
  bool darkMood = false;
  @override
  Widget build(BuildContext context) {
    final screenwidth = Get.width;
    bool ispresent = false;
    // getting the value from the provider instance

    const breakpoint = 600.0;

    if (screenwidth >= breakpoint) {
      setState(() {
        ispresent = true;
      });
    }
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return AppBar(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.whiteOff)),
        backgroundColor: AppColors.whiteOff,
        elevation: 1,
        leading: ispresent
            ? const SizedBox()
            : InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SizedBox(
                    height: 27,
                    width: 27,
                    child: Center(
                        child: SvgPicture.asset(
                      "assets/menu-left.svg",
                      height: 25,
                      width: 25,
                      color: AppColors.primary,
                    )))),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              constraints.maxWidth < 600
                  ? const SizedBox()
                  : const SizedBox(
                      width: 10,
                    ),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                color: AppColors.primary,
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                tooltip: "Notifications",
                offset: const Offset(0, 50),
                icon: SvgPicture.asset(
                  Assets.icons.bellNotification,
                  width: 20,
                  height: 20,
                  color: AppColors.primary,
                ),
                itemBuilder: (ctx) => [
                  _buildPopupNotificationsMenuItem12(),
                ],
              ),
              PopupMenuButton(
                color: AppColors.primary,
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                tooltip: "Account",
                offset: Offset(0, constraints.maxWidth >= 800 ? 60 : 50),
                child: constraints.maxWidth >= 800
                    ? SizedBox(
                        width: 140,
                        child: ListTile(
                          leading: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage(
                                Assets.images.profile.toString(),
                              ),
                              backgroundColor: Colors.pink),
                          title: Text("SOS",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis,
                                  color: AppColors.primary)),
                          trailing: null,
                          subtitle: Row(
                            children: [
                              const Text("admin",
                                  style: TextStyle(
                                    fontSize: 12,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 12,
                                color: AppColors.primary,
                              )
                            ],
                          ),
                        ),
                      )
                    : CircleAvatar(
                        backgroundColor: AppColors.blackLight,
                        radius: AppSizes.icon_size_2 * 1.6,
                        child: SvgPicture.asset(
                          Assets.icons.userOn,
                          width: AppSizes.icon_size_4 * 1,
                        ),
                      ),
                itemBuilder: (ctx) => [
                  _buildPopupAdminMenuItem(),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      );
    });
  }

  final AppConst controller = Get.put(AppConst());
  PopupMenuItem _buildPopupAdminMenuItem() {
    return PopupMenuItem(
      enabled: false,
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 155,
            child: Center(
              child: Table(
                columnWidths: const {
                  0: FixedColumnWidth(20),
                },
                children: [
                  row(title: 'Profile', icon: Assets.icons.userOn, index: 0),
                  row(title: 'Setting', icon: Assets.icons.setting, index: 1),
                  row(title: 'Logout', icon: Assets.icons.signout, index: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool light1 = true;

  TableRow row(
      {required String title, required String icon, required int index}) {
    return TableRow(children: [
      TableRowInkWell(
        onTap: () {
          controller.changePage(index);
          Get.back();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SvgPicture.asset(icon,
              width: 18, height: 18, color: AppColors.whiteOff),
        ),
      ),
      TableRowInkWell(
        onTap: () {
          controller.changePage(index);
          Get.back();
        },
        child: Padding(
            padding:
                const EdgeInsets.only(bottom: 5, left: 20, top: 10, right: 20),
            child: Text(
              title,
              style: AppTextStyles.bodyLargeBold
                  .copyWith(color: AppColors.whiteOff, fontSize: 20),
            )),
      ),
    ]);
  }
}

PopupMenuItem _buildPopupNotificationsMenuItem12() {
  return PopupMenuItem(
    padding: EdgeInsets.zero,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: Row(
            children: [
              Text(
                "Notifications",
                style: TextStyle(
                    color: AppColors.whiteOff,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const Spacer(),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
          height: 1,
          color: AppColors.grayLight,
        ),
        const SizedBox(
          height: 7,
        ),
        _buildcomuntile(
            colorsub: AppColors.whiteOff,
            width: 13,
            height: 13,
            padding: const EdgeInsets.all(5),
            colors: AppColors.whiteOff,
            title: 'Google',
            backgroundImage: "",
            subtile:
                "Hey, I just found out what's causing the\nserver to crash!",
            color: AppColors.whiteOff),
        const SizedBox(
          height: 5,
        ),
        Divider(
          height: 1,
          color: AppColors.grayLight,
        ),
        const SizedBox(
          height: 5,
        ),
        _buildcomuntile(
            colorsub: AppColors.whiteOff,
            height: 13,
            width: 13,
            padding: const EdgeInsets.all(5),
            colors: AppColors.whiteOff,
            title: 'Snapchat',
            backgroundImage: "",
            subtile:
                "I finally got the present i mentioned to\nsteven, you'll love it",
            color: AppColors.whiteOff),
        const SizedBox(
          height: 5,
        ),
        Divider(
          height: 1,
          color: AppColors.grayLight,
        ),
        const SizedBox(height: 5),
        Center(
          child: Text(
            "View All",
            style: TextStyle(color: AppColors.whiteOff),
          ),
        )
      ],
    ),
  );
}

Widget _buildcomuntile(
    {required String title,
    required String subtile,
    EdgeInsetsGeometry? padding,
    required Color color,
    required String backgroundImage,
    Color? backcolor,
    FontWeight? fontWeight,
    Color? colors,
    double? width,
    double? height,
    required Color colorsub}) {
  return Container(
    color: backcolor,
    child: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: color),
            ),
          ),
          SizedBox(
            width: 2,
          ),
        ],
      ),
    ),
  );
}
