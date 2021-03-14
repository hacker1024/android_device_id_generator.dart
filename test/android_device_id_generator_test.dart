import 'package:android_device_id_generator/android_device_id_generator.dart';
import 'package:test/test.dart';

void main() {
  late String id;
  late String secureId;

  setUp(() {
    id = generateAndroidDeviceId();
    secureId = generateAndroidDeviceId(secure: true);
  });

  test('The generated IDs should be 16 characters long.', () {
    void testId(String id) => expect(id.length, equals(16));

    testId(id);
    testId(secureId);
  });

  test('The generated IDs should consist of lowercase hexadecimal characters.',
      () {
    void testId(String id) =>
        expect(id.split(''), everyElement(matches(RegExp('[0-9a-f]'))));

    testId(id);
    testId(secureId);
  });
}
