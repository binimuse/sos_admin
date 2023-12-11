// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sos_admin/common/staticdata.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_text_styles.dart';

class ComunTitle extends StatefulWidget {
  final String title;
  final String path;
  const ComunTitle({super.key, required this.title, required this.path});

  @override
  State<ComunTitle> createState() => _ComunTitleState();
}

class _ComunTitleState extends State<ComunTitle> {
  final AppConst controller = Get.put(AppConst());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GetBuilder<AppConst>(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: AppTextStyles.titleBold.copyWith(
                  color: AppColors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Flexible(
                child: Wrap(
                  runSpacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.changePage(0);
                      },
                      child: SvgPicture.asset("assets/home.svg",
                          height: constraints.maxWidth < 600 ? 14 : 16,
                          width: constraints.maxWidth < 600 ? 14 : 16,
                          color: AppColors.black),
                    ),
                    Text('   /   ${widget.path}   /   ',
                        style: AppTextStyles.titleBold.copyWith(
                            color: AppColors.black,
                            fontSize: 12,
                            letterSpacing: 0.8),
                        overflow: TextOverflow.ellipsis),
                    Text(widget.title,
                        style: AppTextStyles.titleBold.copyWith(
                            color: AppColors.black,
                            fontSize: 12,
                            letterSpacing: 0.8),
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              )
            ],
          ),
        );
      });
    });
  }
}
