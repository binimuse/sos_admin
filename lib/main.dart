// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:sos_admin/services/graphql_services.dart';
import 'package:sos_admin/services/sahred_prefrence.dart';
import 'package:sos_admin/utils/lang_util.dart';
import 'app/routes/app_pages.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();
late String selectedLocale;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferenceUtils.init();

  selectedLocale = LanUtil.getSelecctedLanguage();

  runApp(App());
}

Sizer App() {
  return Sizer(
    builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GraphQLProvider(
        client: graphQLConfiguration.client,
        child: CacheProvider(
          child: GetMaterialApp(
            title: "SOS admin",
            initialRoute: AppPages.INITIAL,
            debugShowCheckedModeBanner: false,
            getPages: AppPages.routes,
            defaultTransition: Transition.native,
            // translations: MainTranslations(),
            locale: Locale(
              selectedLocale,
            ),
          ),
        ),
      );
    },
  );
}
