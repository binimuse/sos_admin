// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sos_admin/common/comunbottombar.dart';
import 'package:sos_admin/common/custom_text_input.dart';
import 'package:sos_admin/config/app_assets.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_text_styles.dart';
import 'package:sos_admin/gen/assets.gen.dart';
import 'package:sos_admin/utils/sizebox.dart';

import 'package:url_launcher/url_launcher.dart';

class NewDefaultPage extends StatefulWidget {
  const NewDefaultPage({super.key});

  @override
  State<NewDefaultPage> createState() => _NewDefaultPage();
}

class _NewDefaultPage extends State<NewDefaultPage> {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cardHolder = TextEditingController();
  TextEditingController cardCvc = TextEditingController();
  double padding = 15;
  @override
  void dispose() {
    super.dispose();
    cardNumber.dispose();
    cardHolder.dispose();
    cardCvc.dispose();
  }

  List countries = [
    "assets/images/india.png",
    "assets/images/argentina.png",
    "assets/images/brazil-.png",
    "assets/images/germany.png",
    "assets/united-kingdom.png",
    "assets/circle.png",
  ];

  List logo = [
    "assets/icons8-figma.svg",
    "assets/icons8-adobe-creative-cloud.svg",
    "assets/icons8-starbucks.svg",
    "assets/icons8-apple-logo.svg",
    "assets/icons8-facebook29.svg",
  ];
  List name = [
    "Abeba Alem",
    "Liya Tesfaye",
    "Selam Birhanu",
    "Aster Tadesse",
    "Almaz Yohannes",
  ];
  List price = [
    "\$1001",
    "\$143",
    "\$213",
    "\$343",
    "\$123",
  ];
  List date = [
    "29/1/2023",
    "19/6/2023",
    "1/2/2023",
    "9/4/2023",
    "12/6/2023",
  ];
  List countriesname = [
    "India",
    "Argentina",
    "Brazil",
    "Germany",
    "United-kingdom",
    "United States",
  ];
  List subtitle = [
    "Subscription",
    "Subscription",
    "Receive",
    "Transfer",
    "Receive",
  ];
  List countriespr = [
    "50%",
    "20%",
    "10%",
    "9%",
    "3%",
    "2%",
  ];

  List card2name = [
    "Total SOS",
    "Total Labour",
    "Total Country",
    "Total Contract",
  ];
  List card2price = [
    "1,222",
    "4,451",
    "7,136",
    "9,233",
  ];

  List card2pr = [
    "12%",
    "20.2%",
    "15.6%",
    "39.3%",
  ];
  List card2value = [
    0.3,
    0.6,
    0.9,
    0.2,
  ];
  List card2price1 = [
    "9,233",
    "7,136",
    "1,222",
    "4,451",
  ];
  List cardcolors = [
    const Color(0xff1a7cbc),
    const Color(0xfff07521),
    const Color(0xff4caf50),
    const Color(0xff18a0fb),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.whiteOff,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    _buildcompo2(),
                    _buildcompo3(width: constraints.maxWidth),
                    _buildcompo4(),
                    _buildcompo5(count: 1),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const ComunBottomBar(),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1000) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: _buildcompo2()),
                        Expanded(child: _buildcompo4()),
                      ],
                    ),
                    _buildcompo3(width: constraints.maxWidth),
                    Row(
                      children: [
                        Expanded(child: _buildcompo5(count: 2)),
                      ],
                    ),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const ComunBottomBar(),
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: _buildcompo2(),
                        ),
                        Expanded(
                          flex: 3,
                          child: _buildcompo3(width: constraints.maxWidth),
                        ),
                        Expanded(
                          flex: 2,
                          child: _buildcompo4(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: _buildcompo5(count: 4)),
                      ],
                    ),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const SizeBoxx(),
                    const ComunBottomBar(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildcompo1(
      {required String title,
      required String iconpath,
      required String price,
      required String pr,
      required Color maincolor,
      required String secondicon}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 100,
        // width: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColors.whiteOff,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              dense: true,
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: maincolor.withOpacity(0.2),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  iconpath,
                  height: 25,
                  width: 25,
                )),
              ),
              title: Text(
                title,
                style: AppTextStyles.captionRegular.copyWith(
                    color: AppColors.grayDefault,
                    fontSize: 12,
                    letterSpacing: 0.8),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      price,
                      style: AppTextStyles.captionRegular.copyWith(
                          color: AppColors.grayDefault,
                          fontSize: 12,
                          letterSpacing: 0.8),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Text(pr,
                            style: AppTextStyles.captionRegular.copyWith(
                                color: AppColors.grayDefault,
                                fontSize: 12,
                                letterSpacing: 0.8),
                            overflow: TextOverflow.ellipsis)),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(secondicon,
                        height: 16, width: 16, color: AppColors.black),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildcompo2() {
    const double padding = 15;
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Container(
        // height: 500,
        padding: const EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColors.whiteOff,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Top Countries",
                  style: AppTextStyles.displayOneBold.copyWith(
                      color: AppColors.black, fontSize: 18, letterSpacing: 0.8),
                ),
                const Spacer(),
                const Icon(Icons.menu)
              ],
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: countries.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        dense: true,
                        leading: CircleAvatar(
                            backgroundImage: AssetImage(countries[index]),
                            backgroundColor: AppColors.primary),
                        trailing: Text(countriespr[index],
                            style: AppTextStyles.captionRegular
                                .copyWith(
                                    color: AppColors.grayDefault,
                                    fontSize: 12,
                                    letterSpacing: 0.8)
                                .copyWith(fontSize: 14),
                            overflow: TextOverflow.ellipsis),
                        title: Text(countriesname[index],
                            style: AppTextStyles.titleRegular.copyWith(
                                color: AppColors.black,
                                fontSize: 18,
                                letterSpacing: 0.8))),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See all",
                  style: AppTextStyles.captionRegular.copyWith(
                      color: AppColors.grayDefault,
                      fontSize: 12,
                      letterSpacing: 0.8),
                ),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  "assets/angle-right-small.svg",
                  color: AppColors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildcompo3({required double width}) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        // height: 400,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Colors.blueAccent.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffffc107),
                        ),
                        child: Center(
                            child: Text("On The Go",
                                style: AppTextStyles.titleRegular.copyWith(
                                    color: AppColors.black,
                                    fontSize: 18,
                                    letterSpacing: 0.8))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Download SOS App",
                        style: AppTextStyles.displayOneBold.copyWith(
                            color: AppColors.black,
                            fontSize: 18,
                            letterSpacing: 0.8),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff1e1e1e),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              fixedSize: const Size(100, 42)),
                          onPressed: () async {},
                          child: Text("Download",
                              style: AppTextStyles.titleRegular.copyWith(
                                  color: AppColors.whiteOff,
                                  fontSize: 10,
                                  letterSpacing: 0.7))),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Available for Android and ios',
                          style: AppTextStyles.captionRegular.copyWith(
                              color: AppColors.grayDefault,
                              fontSize: 12,
                              letterSpacing: 0.8),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SvgPicture.asset(Assets.icons.logo, fit: BoxFit.contain),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildcompo4() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 450,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColors.whiteOff,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Recent Activity",
                      style: AppTextStyles.displayOneBold.copyWith(
                          color: AppColors.black,
                          fontSize: 18,
                          letterSpacing: 0.8)),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(FontAwesomeIcons.circleInfo),
                  const Spacer(),
                  Text(
                    "See more",
                    style: AppTextStyles.captionRegular.copyWith(
                        color: AppColors.grayDefault,
                        fontSize: 12,
                        letterSpacing: 0.8),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  const Icon(FontAwesomeIcons.arrowRight, size: 12),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(
                              FontAwesomeIcons.user,
                              color: AppColors.primary,
                            ),
                          ),
                          title: Text(
                            name[index],
                            style: AppTextStyles.captionRegular.copyWith(
                                color: AppColors.black,
                                fontSize: 18,
                                letterSpacing: 0.8),
                          )),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildcompo5({required int count}) {
    return GridView.builder(
      itemCount: card2name.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count, mainAxisExtent: 200),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 200,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: AppColors.whiteOff,
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  spreadRadius: 2,
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        card2name[index],
                        style: AppTextStyles.displayOneBold.copyWith(
                            color: AppColors.primary,
                            fontSize: 18,
                            letterSpacing: 0.8),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        "assets/more-vertical.svg",
                        height: 20,
                        width: 20,
                        color: AppColors.black,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        card2price[index],
                        style: AppTextStyles.displayOneBold.copyWith(
                            color: AppColors.primary,
                            fontSize: 18,
                            letterSpacing: 0.8),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        card2pr[index],
                        style: AppTextStyles.displayOneBold.copyWith(
                            color: AppColors.primary,
                            fontSize: 18,
                            letterSpacing: 0.8),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      height: 8,
                      child: LinearProgressIndicator(
                        value: card2value[index], // percent filled
                        valueColor: AlwaysStoppedAnimation(cardcolors[index]),
                        backgroundColor: cardcolors[index].withOpacity(0.1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "This week  ",
                      style: AppTextStyles.captionRegular.copyWith(
                          color: AppColors.grayDefault,
                          fontSize: 12,
                          letterSpacing: 0.8),
                    ),
                    TextSpan(
                      text: card2price1[index],
                      style: AppTextStyles.displayOneBold.copyWith(
                          color: AppColors.primary,
                          fontSize: 18,
                          letterSpacing: 0.8),
                    ),
                  ]))
                ]),
          ),
        );
      },
    );
  }

  List<String> dropdownOptions1 = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  List<String> dropdownOptions2 = [
    "2020",
    "2021",
    "2022",
    "2023",
  ];

  String? selectedOption;

  String? selectedOption1;
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final int x;
  final double y;
  final double y1;
}
