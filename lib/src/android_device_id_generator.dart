import 'dart:math';

/// Generates a 64-bit hexadecimal string, matching the format of Android's
/// [Settings.Secure.ANDROID_ID](https://developer.android.com/reference/android/provider/Settings.Secure#ANDROID_ID).
///
/// If [secure] is `true`, [Random.secure] will be used as the random number
/// implementation.
String generateAndroidDeviceId({bool secure = false}) {
  final random = secure ? Random.secure() : Random();
  String generateHalf() =>
      random.nextInt(1 << 31).toRadixString(16).padLeft(8, '0');
  return generateHalf() + generateHalf();
}
