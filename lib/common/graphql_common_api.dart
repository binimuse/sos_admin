// // ignore_for_file: constant_identifier_names

// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:sos_admin/common/enums.dart';


// import '../services/graphql_services.dart';

// class GraphQLCommonApi {
//   Future<Map<String, dynamic>?> query(
//       String queryStr, Map<String, dynamic> variables, Roles roles) async {

//     GraphQLConfiguration graphQLConfiguration =
//         GraphQLConfiguration(roles: roles);

//     GraphQLClient client = graphQLConfiguration.clientToQuery();

//     QueryResult result = await client.query(
//       QueryOptions(
//         document: gql(queryStr),
//         variables: variables,
//       ),
//     );

//     if (!result.hasException) {
//       // print("API RESPONSE => CALLED ${result.data}");

//       return result.data;
//     } else {
//       UserTokenCheckerResponse userTokenCheckerResponse =
//           await UserTokenChecker.checkTokenNew(result.exception);


//       if (userTokenCheckerResponse == UserTokenCheckerResponse.NETWORK_ERROR) {
//         throw "API RESPONSE ERROR ${result.exception.toString()}";
//       }

//       if (userTokenCheckerResponse ==
//           UserTokenCheckerResponse.TOKEN_REFRESHED_SUCCESS) {
//         ///CALL FUNCTION AGAIN
//         query(queryStr, variables, roles);
//       }
//     }
//     return null;
//   }

//   Future<Map<String, dynamic>?> mutation(
//     String queryStr,
//     Map<String, dynamic> variables,
//     Roles roles,
//   ) async {
//     GraphQLConfiguration graphQLConfiguration =
//         GraphQLConfiguration(roles: roles);

//     GraphQLClient client = graphQLConfiguration.clientToQuery();

//     QueryResult result = await client.mutate(
//       MutationOptions(
//         document: gql(queryStr),
//         variables: variables,
//       ),
//     );

//     if (!result.hasException) {
//       // print("API RESPONSE => CALLED ${result.data}");

//       return result.data;
//     } else {
//       UserTokenCheckerResponse userTokenCheckerResponse =
//           await UserTokenChecker.checkTokenNew(result.exception);

//       if (userTokenCheckerResponse == UserTokenCheckerResponse.NETWORK_ERROR) {
//         throw "API RESPONSE ERROR ${result.exception.toString()}";
//       }

//       if (userTokenCheckerResponse ==
//           UserTokenCheckerResponse.TOKEN_REFRESHED_SUCCESS) {
//         ///CALL FUNCTION AGAIN
//         query(queryStr, variables, roles);
//       }
//     }
//     return null;
//   }
// }

// enum GraphQLCommonStatus { LOADING, ERROR }
