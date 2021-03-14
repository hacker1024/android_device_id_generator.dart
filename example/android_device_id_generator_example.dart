import 'package:android_device_id_generator/android_device_id_generator.dart';

void main() {
  // Generate an android device ID.
  final id = generateAndroidDeviceId();

  // Generate a secure android device ID.
  final secureId = generateAndroidDeviceId(secure: true);
}
