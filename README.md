# android_device_id_generator
A Dart package to generate fake Android device IDs, in the same format as Android's
[Settings.Secure.ANDROID_ID](https://developer.android.com/reference/android/provider/Settings.Secure#ANDROID_ID).

## Usage
```dart
import 'package:android_device_id_generator/android_device_id_generator.dart';

void main() {
  // Generate an android device ID.
  final id = generateAndroidDeviceId();

  // Generate a cryptographically secure android device ID.
  final secureId = generateAndroidDeviceId(secure: true);
}
```