// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sos_admin/common/comunbottombar.dart';
import 'package:sos_admin/common/comuntitle.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_text_styles.dart';
import 'package:sos_admin/utils/sizebox.dart';

class BasicTablesPage extends StatefulWidget {
  const BasicTablesPage({Key? key}) : super(key: key);

  @override
  State<BasicTablesPage> createState() => _BasicTablesPageState();
}

class _BasicTablesPageState extends State<BasicTablesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.whiteOff,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return SizedBox(
              height: 900,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const ComunTitle(title: 'SOS', path: "Forms & Table"),
                    _buildtable(width: constraints.maxWidth),
                    const SizeBoxx(),
                    const ComunBottomBar(),
                  ],
                ),
              ),
            );
          } else if (constraints.maxWidth < 1200) {
            return SizedBox(
              height: 1000,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ComunTitle(title: 'SOS', path: "Forms & Table"),
                    _buildtable(width: constraints.maxWidth),
                    const SizeBoxx(),
                    const ComunBottomBar(),
                  ],
                ),
              ),
            );
          } else {
            // Website layout
            return SizedBox(
              height: 1000,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ComunTitle(title: 'SOS', path: "Forms & Table"),
                    _buildtable(width: constraints.maxWidth),
                    const SizeBoxx(),
                    const ComunBottomBar(),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  TableRow divider({required Color color}) {
    return TableRow(children: [
      Divider(color: color, height: 30),
      Divider(color: color, height: 30),
      Divider(color: color, height: 30),
      Divider(color: color, height: 30),
      Divider(color: color, height: 30),
      Divider(color: color, height: 30),
      Divider(color: color, height: 30),
      Divider(color: color, height: 30),
    ]);
  }

  Widget _buildtable({required double width}) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        // height:width<615? 595 :550,
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("List of SOS",
                  style: AppTextStyles.captionRegular.copyWith(
                      overflow: TextOverflow.ellipsis, color: AppColors.black),
                  maxLines: 2),
              Divider(
                color: Colors.grey.shade300,
                height: 60,
              ),
              SizedBox(
                height: 380,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      height: 400,
                      width: width < 1220 ? 1500 : width,
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Table(
                                    columnWidths: const {
                                      0: FixedColumnWidth(80),
                                      1: FixedColumnWidth(260),
                                    },
                                    children: [
                                      TableRow(children: [
                                        Text("No",
                                            style: AppTextStyles
                                                .displayOneRegular
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: AppColors.primary)),
                                        Text("Labour ID",
                                            style: AppTextStyles
                                                .displayOneRegular
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: AppColors.primary)),
                                        Text("First Name ",
                                            style: AppTextStyles
                                                .displayOneRegular
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: AppColors.primary)),
                                        Text("Middle Name ",
                                            style: AppTextStyles
                                                .displayOneRegular
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: AppColors.primary)),
                                        Text("Last Name",
                                            style: AppTextStyles
                                                .displayOneRegular
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: AppColors.primary)),
                                        Text("Country",
                                            style: AppTextStyles
                                                .displayOneRegular
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: AppColors.primary)),
                                        Text("Address",
                                            style: AppTextStyles
                                                .displayOneRegular
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: AppColors.primary)),
                                        Center(
                                            child: Text("Action",
                                                style: AppTextStyles
                                                    .displayOneRegular
                                                    .copyWith(
                                                        fontSize: 16,
                                                        color: AppColors
                                                            .primary))),
                                      ]),
                                      divider(color: const Color(0xff7366ff)),
                                      newRow(
                                          id: "01",
                                          labourid: "ER9089jh",
                                          fname: "Aisha",
                                          mname: "Gulelat",
                                          lname: "Abebe",
                                          country: "UAE",
                                          address: "Sheikh Zayed Road"),
                                      divider(color: Colors.red),
                                      newRow(
                                          id: "02",
                                          labourid: "ER9089jh",
                                          fname: "Fatima",
                                          mname: "Gulelat",
                                          lname: "Abebe",
                                          country: "UAE",
                                          address: "Sheikh Zayed Road"),
                                      divider(color: Colors.green),
                                      newRow(
                                          id: "03",
                                          labourid: "ER9089jh",
                                          fname: "Mariam",
                                          mname: "Gulelat",
                                          lname: "Abebe",
                                          country: "UAE",
                                          address: "Sheikh Zayed Road"),
                                      divider(color: Colors.blue),
                                      newRow(
                                          id: "04",
                                          labourid: "ER9089jh",
                                          fname: "Layla",
                                          mname: "Gulelat",
                                          lname: "Abebe",
                                          country: "UAE",
                                          address: "Sheikh Zayed Road"),
                                      divider(color: Colors.orange),
                                      newRow(
                                          id: "05",
                                          labourid: "ER9089jh",
                                          fname: "Zahra",
                                          mname: "Gulelat",
                                          lname: "Abebe",
                                          country: "UAE",
                                          address: "Sheikh Zayed Road"),
                                      divider(color: Colors.deepOrange),
                                      newRow(
                                          id: "06",
                                          labourid: "ER9089jh",
                                          fname: "Noura",
                                          mname: "Gulelat",
                                          lname: "Abebe",
                                          country: "UAE",
                                          address: "Sheikh Zayed Road"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TableRow newRow({
    required String id,
    required String labourid,
    required String fname,
    required String mname,
    required String lname,
    required String country,
    required String address,
  }) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(id, style: TextStyle(color: AppColors.black)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          labourid,
          style: TextStyle(color: AppColors.black),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(fname,
            style: TextStyle(color: AppColors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 1),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(mname,
            style: TextStyle(color: AppColors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 1),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(lname,
            style: TextStyle(color: AppColors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 1),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(country,
            style: TextStyle(color: AppColors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 1),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(address,
            style: TextStyle(color: AppColors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 1),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.whiteOff,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.withOpacity(0.3))),
          child: Center(
              child: Text("Take action",
                  style: TextStyle(color: AppColors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1)),
        ),
      ),
    ]);
  }
}
