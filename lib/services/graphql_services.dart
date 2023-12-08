// ignore_for_file: depend_on_referenced_packages

import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:sos_admin/common/enums.dart";
import "package:sos_admin/services/constants.dart";
import "package:sos_admin/services/encryption_util.dart";

import "sahred_prefrence.dart";

class GraphQLConfiguration {
  Roles? roles;

  late ValueNotifier<GraphQLClient> client;

  GraphQLConfiguration({this.roles}) {
    this.roles = roles;

    client = ValueNotifier(
      GraphQLClient(
        link: HttpLink(
          Constants.produactionURl,
          // Constants.produactionURl,
          defaultHeaders: {
            //'x-hasura-admin-secret': "8ShURDi6roXj9tmejrWwX992by5S5Q",
            'x-hasura-role': roles == Roles.contract_immigration
                ? "contract_immigration"
                : "rejecter",

            //'x-hasura-role': "agency",
          },
        ),
        cache: GraphQLCache(),
      ),
    );
  }

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(),
      link: AuthLink(getToken: () async {
        final prefs = await SharedPreferences.getInstance();

        print(
            "return Bearer ${EncryptionUtil.decrypt(prefs.getString('access_token'))}");

        return "Bearer ${EncryptionUtil.decrypt(prefs.getString('access_token'))}";
      }).concat(
        HttpLink(
          Constants.produactionURl,
          // Constants.produactionURl,
          defaultHeaders: {
            //'x-hasura-admin-secret': "8ShURDi6roXj9tmejrWwX992by5S5Q",
            //'x-hasura-role': "contract_immigration",
            'x-hasura-role': roles == Roles.contract_immigration
                ? "contract_immigration"
                : "rejecter",
            //'x-hasura-role': "agency",
          },
        ),
      ),
    );
  }
}

class GraphQLConfigurationRefresh {
  static HttpLink httpLink = HttpLink(
    Constants.produactionURl,
    // Constants.produactionURl,
    defaultHeaders: {
      'x-hasura-role': "anonymous",
    },
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    ),
  );

  GraphQLClient clientToQuery() {
    print(
        "REFRESING ROKEN => ${PreferenceUtils.getString(Constants.refreshTokenKey)}");

    return GraphQLClient(
      cache: GraphQLCache(),
      link: AuthLink(getToken: () async {
        return "Bearer ${EncryptionUtil.decrypt(PreferenceUtils.getString(Constants.refreshTokenKey))}";
      }).concat(httpLink),
    );
  }
}

class GraphQLConfigurationForauth {
  static HttpLink httpLink = HttpLink(
    Constants.produactionURl,
    // Constants.produactionURl,
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    ),
  );

  final Link link = (httpLink);

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }
}
