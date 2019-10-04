# khmer_phone_validator

Validator Khmer Phone Number.

## Getting Started

~~~dart
    var phone = "012123123";

      final newPhone = KhmerPhoneValidator.validPhone(phone);

      print(newPhone.phone);
      /// 855012123123
      print(newPhone.status);
      /// true
~~~
