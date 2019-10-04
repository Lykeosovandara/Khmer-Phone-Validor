library khmer_phone_validator;

import 'package:flutter/cupertino.dart';

/// A Calculator.
class KhmerPhoneValidator {
  /// If it can valid it will return status [true]
  static StatusPhone validPhone(String phone) {
    //Begin with + sign or not with 855, or begin with 0 or not, and has 2 digits from 1 to 9, and has 2 digits of any number
    final pattern = new RegExp(r'^((\+?855)|(0?))([1-9][0-9])(\d{6,7})$');

    // correct format: +85512345678, 85512345678, 012345678, 12345678
    final replacedString = '855';
    String newString = '';

    if (phone.contains(pattern)) {
      newString = phone.replaceAllMapped(pattern, (match) {
        return '$replacedString${match[4]}${match[5]}';
      });
    }

    if (newString != '') {
      return StatusPhone(status: true, phone: newString);
    }
    return StatusPhone(status: false, phone: null);
  }
}

class StatusPhone {
  bool status;
  String phone;

  StatusPhone({@required this.phone, @required this.status});
}
