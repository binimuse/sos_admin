import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:sos_admin/app/routes/app_pages.dart';
import 'package:sos_admin/common/custom_normal_button.dart';
import 'package:sos_admin/common/custom_text_input.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_sizes.dart';
import 'package:sos_admin/config/app_text_styles.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: constraints.maxHeight >= 500 ? 520 : 300,
                      width: constraints.maxWidth >= 480 ? 520 : 300,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              blurStyle: BlurStyle.outer,
                              offset: Offset(1, 4),
                              spreadRadius: 5,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: constraints.maxWidth >= 480 ? 30 : 0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Log In",
                              style: AppTextStyles.titleBold.copyWith(
                                  color: AppColors.primaryDark,
                                  fontSize: AppSizes.mp_v_4),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "We suggest using the email address you use at work.",
                                style: AppTextStyles.bodySmallRegular.copyWith(
                                    color: AppColors.grayDark, fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Enter your Labor ID*",
                                    style: AppTextStyles.titleBold.copyWith(
                                        color: AppColors.primary, fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextInputBorder(
                                    hintText: "Eg. EL1233454",
                                    labelText: "Labor ID",
                                    onChanged: (s) {},
                                    controller: controller.laborIdIcontroller,
                                    onsaved: (s) {},
                                    inputAction: TextInputAction.next,
                                    validator: (String? value) {
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  CustomNormalButtonBorder(
                                    textcolor: AppColors.primary,
                                    text: "Start",
                                    textStyle: AppTextStyles.bodyLargeBold
                                        .copyWith(
                                            color: AppColors.whiteOff,
                                            fontSize: 20),
                                    borderRadius: 15,
                                    buttoncolor: AppColors.primary,
                                    padding: EdgeInsets.symmetric(
                                      vertical: AppSizes.mp_v_4 * 0.6,
                                      horizontal: AppSizes.mp_w_4 * 0.1,
                                    ),
                                    onPressed: () {
                                      Get.toNamed(Routes.HOME);
                                    },
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        FontAwesomeIcons.user,
                                        color: Colors.blue,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                          onTap: () {},
                                          child: Text(
                                            "Contact the admin",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize:
                                                    constraints.maxWidth >= 480
                                                        ? 14
                                                        : 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "© 2023 SOS Admin",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
