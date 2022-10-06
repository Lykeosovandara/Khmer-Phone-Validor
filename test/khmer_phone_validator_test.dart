import 'package:flutter_test/flutter_test.dart';

import 'package:khmer_phone_validator/khmer_phone_validator.dart';

void main() {
  test('Validating Testing', () {
    final validator = KhmerPhoneValidator();
    expect(validator.validPhone("023132131").status, true);
    expect( validator.validPhone("23dawd").status, false);
  });
}
