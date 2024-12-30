


import 'package:allylearn/core/constants/app_variable.dart';

class ValidatorUtils {
  ValidatorUtils._();


  static String? fullNameValidator(String? name) {
    print('HERE IS NAME ::: ${name}');
    if (name != null && name.isNotEmpty && name.trim() != '') {
      return null;
    } else {
      return 'Please enter full name';
    }
  }


  static String? emailValidator(String? email) {
    if (email != null && email.isNotEmpty) {
      if (isEmail(email)) {
        return null;
      } else {
        return 'Enter valid email address';
      }
    } else {
      return 'Please enter email address';
    }
  }

  static String? videoSearch(String? videoSearch) {
    if (videoSearch != null && videoSearch.isNotEmpty) {
      if (videoSearch.length > 4) {
        return null;
      } else {
        return 'Enter atleast 4 charchter';
      }
    } else {
      return 'Please enter charchater';
    }
  }

  static String? passwordValidator(String? password, {bool isStrong = true}) {

    if (password != null && password.isNotEmpty) {
      if (isStrong) {
        if (isPasswordValid(password)) {
          return null;
        } else {
          return passwordMustBeAtLeastEightCharacters;
        }
      } else {
        return null;
      }
    } else {
      return pleaseEnterPassword;
    }
  }

  static String? confirmPasswordValidator(String? value, String password) {
    if (value != null && value.isNotEmpty) {
      if (password == value) {
        return null;
      }
      return passwordDoesNotMatch;
    } else {
      return pleaseReEnterYourPassword;
    }
  }



  static String? loginPasswordValidator(String? password, {bool isStrong = true}) {
    if (password != null && password.isNotEmpty) {
        return null;
    } else {
      return pleaseEnterPassword;
    }
  }

  static String? otpValidator(String? otp) {
    if (otp?.isNotEmpty ?? false) {
      return null;
    } else {
      return pleaseEnterOTP;
    }
  }
  static String? inviteCodeValidator(String? inviteCode) {
    if (inviteCode?.isNotEmpty ?? false) {
      return null;
    } else {
      return pleaseEnterInviteCode;
    }
  }

  static String? discussionValidator(String? msg) {
    if (msg?.isNotEmpty ?? false) {
      return null;
    } else {
      return pleaseEnterMsg;
    }
  }

  static String? phoneNumberValidator(String? mobileNumber) {
    String pattern = r'^(0|91)?[6-9][0-9]{9}$';
    RegExp regExp = RegExp(pattern);
    if (mobileNumber!.isNotEmpty) {
      if (!regExp.hasMatch(mobileNumber)) {
        return pleaseEnterValidPhoneNumber;
      }
      return null;
    } else {
      return pleaseEnterPhoneNumber;
    }
  }

  static String? newPhoneNumberValidator(String? value, String oldPhoneNumber) {
    if (value?.isNotEmpty ?? false) {
      if (oldPhoneNumber == value) {
        return thisNewPhoneNumberIsAlreadyUsed;
      } else {
        if (isPhoneNumberValid(value)) {
          return null;
        } else {
          return pleaseEnterValidPhoneNumber;
        }
      }
    } else {
      return pleaseNewEnterPhoneNumber;
    }
  }


  static String? confirmPhoneNumberValidator(String? value, String phoneNumber) {
    if (value != null && value.isNotEmpty) {
      if (phoneNumber == value) {
        return null;
      }
      return phoneNumberDoseNotMatch;
    } else {
      return pleaseReEnterYourPhoneNumber;
    }
  }

  static bool isPhoneNumberValid(String? phoneNumber) {
    Pattern pattern =  r'^(0|91)?[6-9][0-9]{9}$';

    RegExp regExp = RegExp(pattern.toString());
    return phoneNumber != null ? regExp.hasMatch(phoneNumber) : false;
  }

  static bool isPasswordValid(String? password) {
    Pattern pattern = r'^.{8,}$';
    RegExp regExp = RegExp(pattern.toString());
    return password != null ? regExp.hasMatch(password) : false;
  }

  // static bool isNameValid(String? password) {
  //   Pattern pattern = r'^[a-zA-Z]+(?:\s+[a-zA-Z]+)*$';
  //   RegExp regExp = RegExp(pattern.toString());
  //   return password != null ? regExp.hasMatch(password) : false;
  // }

  static bool isEmail(String? email) {
    Pattern pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(pattern.toString());
    return email != null ? regExp.hasMatch(email) : false;
  }

}
