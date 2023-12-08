import 'package:flutter/material.dart';

import 'package:sos_admin/config/app_colors.dart';

class ComunBottomBar extends StatefulWidget {
  const ComunBottomBar({Key? key}) : super(key: key);

  @override
  State<ComunBottomBar> createState() => _ComunBottomBarState();
}

class _ComunBottomBarState extends State<ComunBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: AppColors.whiteOff,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Text(
        "Copyright 2023 © SOS Admin.",
        style: TextStyle(color: AppColors.grayDefault),
      )),
    );
  }
}
