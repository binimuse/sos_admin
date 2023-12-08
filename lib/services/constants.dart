// ignore_for_file: depend_on_referenced_packages, constant_identifier_names

import 'package:flutter/services.dart';

class Constants {
  ///APP NATIVE COMMUNICATION CHANNEL NAME
  static const MethodChannel appChannel =
      MethodChannel('com.lmis.jobs/lmis_jobs_channel');

  ///FACE RECOGNITION API
  static const String faceRecognitionApi =
      "https://gateway.lmis.gov.et:9005/face/identify";

  ///FACE RECOGNITION API
  static const String fileBaseUrl = "https://storagex-api.lmis.gov.et/";

  static const String imageBaseURLStaging =
      "https://staging-storage-download.lmis.gov.et/";

  static const String imageBaseURL = "https://storage-download.lmis.gov.et/";

  ///HIVE KEYS
  static const String loggedInUserKey = 'LOGGED_IN_USER';

  // static const String stagingURl =
  //     'https://staging-gateway.lmis.gov.et/v1/graphql';
  static const String stagingURl =
      'https://staging-gateway.lmis.gov.et/v1/graphql';


  static const String produactionURl = 'https://gateway.lmis.gov.et/v1/graphql';
  //static const String userAccessTokenKey = 'USER_ACCESS_TOKEN';
  static const String userAccessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const int laborsPageSize = 10;

  ///HIVE BOXES
  static const String userBox = 'USER_BOX_KEY';

  ///OTHER KEYS
  static const String imageFilePath = 'image_file_path';
  static const String isForRegistrationPage = 'IS_FOR_REGISTRATION_PAGE';
  static const String gender = 'GENDER';
  static const String region = 'REGION';

  ///EncryptionKey
  static const String encryptionKey = "dezCaKidRO0pk7GQWP7q";
  //osscLabourId
  static const String osscLabourId = "osscLabourId";
  static const String osscLabourPhoneNumber = "osscLabourPhoneNumber";
  static const String osscId = "osscId";

// Language
  static const String selectedLanguage = "SELECTED_LANGUAGE";
  static const String lanAm = "am";
  static const String lanEn = "en";
  static const String lanOr = "or";
  static const String lanTi = "ti";

  static String sentryUrl =
      'https://aaa5812bdcd1459ead45a34f7b7fecf7@o1372722.ingest.sentry.io/6686941';

  static const String REFRESHER_STATE = "REFRESHER_STATE";

  static String languageDataBox = "language_BaseData_Box";
  static String martialStatusDataBox = "martial_Status_DataBox";
  static String educationLevelBaseDataBox = "education_Level_BaseData_Box";
  static String nationalityBaseDataBox = "nationality_BaseData_Box";
  static String regionsBaseDataBox = "regionsBaseDataBox";
  static String addressTypeBaseDataBox = "address_Type_BaseData_Box";
  static String subCityBaseDataBox = "subCity_BaseData_Box";
  static String contactTypeBaseDataBox = "contact_Type_BaseData_Box";
  static String fieldsOfStudyBaseDataBox = "fields_Of_Study_BaseData_Box";
  static String educationalInstitutionsBaseDataBox =
      "educational_Institutions_BaseData_Box";
  static String proficiencyBaseDataBox = "proficiency_BaseData_Box";
  static String skillsBaseDataBox = "skills_BaseData_Box";
  static String offlineLaborInfoModelPendingBox =
      "offline_Labor_Info_Model_Pending_Box";
  static String disabalityTypeBaseDataBox = "offline_Disablity_Info_Model_Box";

  static String cityDataBox = 'city_Data_Box';
  static String employmentTypeDataBox = 'employment_Type_Data_Box';
  static String sectorDataBox = 'sector_Data_Box';
  static String terminationresonBox = 'terminationreson_Data_Box';
  static String offlineLaborInfoModelComplitedBox =
      'offline_Labor_Info_Model_Complited_Box';
  static String offlineLaborInfoModelFailedBox =
      'offline_Labor_Info_Model_Failed_Box';
  static String organizationId = 'ORGANIZATION_ID';

  static var contractId="contract_id";
}
