import 'package:sos_admin/services/exceptions.dart';

class PagesUtil {
  static String removeSpecialChars(String text) {
    return text.replaceAll(RegExp('[^A-Za-z0-9]'), '');
  }

  static bool isValidUrl(String url) {
    final RegExp urlRegExp = RegExp(
        r"^(http(s)?:\/\/.)[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)$");
    return urlRegExp.hasMatch(url);
  }

  static bool isPhoneValidEthiopian(String text) {
    bool isPhoneValidEthiopian = true;

    if (text.length == 13) {
      if (!text.startsWith("+251")) {
        isPhoneValidEthiopian = false;
      }
    }

    if (text.length == 12) {
      if (!text.startsWith("251")) {
        isPhoneValidEthiopian = false;
      }
    }

    if (text.length == 10) {
      if (!text.startsWith("0")) {
        isPhoneValidEthiopian = false;
      }
    }

    if (text.length == 9) {
      if (!text.startsWith("9")) {
        isPhoneValidEthiopian = false;
      }
    }

    if (text.length < 9 || text.length == 11 || text.length > 13) {
      isPhoneValidEthiopian = false;
    }
    return isPhoneValidEthiopian;
  }

  static bool isValidEmail(String email) {
    String pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  static String formatPhoneNumber(String text) {
    ///VALIDATE PHONE NUMBER FIRST
    if (!isPhoneValidEthiopian(text)) {
      throw PhoneNumberValidationError();
    }

    String formattedPhoneNumber = "";

    if (text.length == 13) {
      formattedPhoneNumber = text;
    }

    if (text.length == 12) {
      formattedPhoneNumber = '+$text';
    }

    if (text.length == 10) {
      formattedPhoneNumber = '+251${text.substring(1)}';
    }

    if (text.length == 9) {
      formattedPhoneNumber = '+251$text';
    }

    return formattedPhoneNumber;
  }
}
