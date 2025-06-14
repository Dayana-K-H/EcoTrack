// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// FlutterSecureDotEnvAnnotationGenerator
// **************************************************************************

class _$Env extends Env {
  const _$Env(this._encryptionKey, this._iv) : super._();

  final String _encryptionKey;
  final String _iv;
  static final Uint8List _encryptedValues = Uint8List.fromList([
    29,
    124,
    36,
    200,
    236,
    200,
    2,
    208,
    97,
    194,
    93,
    19,
    212,
    175,
    157,
    164,
    81,
    206,
    17,
    233,
    72,
    121,
    22,
    46,
    171,
    136,
    104,
    234,
    212,
    149,
    132,
    240,
    65,
    57,
    203,
    156,
    232,
    21,
    62,
    142,
    145,
    116,
    105,
    182,
    78,
    206,
    15,
    47,
    145,
    52,
    250,
    77,
    163,
    81,
    31,
    228,
    11,
    137,
    183,
    38,
    205,
    32,
    88,
    132,
    206,
    43,
    209,
    83,
    49,
    52,
    4,
    235,
    47,
    101,
    67,
    32,
    28,
    74,
    99,
    99,
    151,
    4,
    39,
    104,
    117,
    165,
    63,
    77,
    32,
    27,
    90,
    57,
    3,
    109,
    214,
    214,
    49,
    174,
    95,
    31,
    23,
    205,
    129,
    191,
    26,
    69,
    47,
    6,
    55,
    148,
    12,
    134,
    207,
    110,
    174,
    106,
    168,
    39,
    99,
    181,
    111,
    38,
    87,
    234,
    214,
    244,
    200,
    26,
    220,
    216,
    223,
    68,
    134,
    26,
    235,
    250,
    74,
    24,
    251,
    62,
    121,
    223,
    211,
    19,
    5,
    34,
    82,
    158,
    200,
    86,
    22,
    89,
    102,
    126,
    70,
    99,
    157,
    149,
    74,
    235,
    129,
    2,
    65,
    219,
    246,
    225,
    63,
    216,
    126,
    254,
    27,
    3,
    192,
    86,
    110,
    126,
    43,
    108,
    191,
    102,
    187,
    65,
    166,
    68,
    200,
    175,
    102,
    255,
    254,
    106,
    153,
    169,
  ]);
  @override
  String get firebaseAndroidApiKey => _get('FIREBASE_ANDROID_API_KEY');

  @override
  String get firebaseAndroidAppId => _get('FIREBASE_ANDROID_APP_ID');

  @override
  String get firebaseAndroidMessagingSenderId =>
      _get('FIREBASE_ANDROID_MESSAGING_SENDER_ID');

  @override
  String get firebaseAndroidProjectId => _get('FIREBASE_ANDROID_PROJECT_ID');

  @override
  String get firebaseAndroidStorageBucket =>
      _get('FIREBASE_ANDROID_STORAGE_BUCKET');

  T _get<T>(String key, {T Function(String)? fromString}) {
    T parseValue(String strValue) {
      if (T == String) {
        return (strValue) as T;
      } else if (T == int) {
        return int.parse(strValue) as T;
      } else if (T == double) {
        return double.parse(strValue) as T;
      } else if (T == bool) {
        return (strValue.toLowerCase() == 'true') as T;
      } else if (T == Enum || fromString != null) {
        if (fromString == null) {
          throw Exception('fromString is required for Enum');
        }

        return fromString(strValue.split('.').last);
      }

      throw Exception('Type ${T.toString()} not supported');
    }

    final encryptionKey = base64.decode(_encryptionKey.trim());
    final iv = base64.decode(_iv.trim());
    final decrypted = AESCBCEncrypter.aesCbcDecrypt(
      encryptionKey,
      iv,
      _encryptedValues,
    );
    final jsonMap = json.decode(decrypted) as Map<String, dynamic>;
    if (!jsonMap.containsKey(key)) {
      throw Exception('Key $key not found in .env file');
    }

    final encryptedValue = jsonMap[key] as String;
    final decryptedValue = AESCBCEncrypter.aesCbcDecrypt(
      encryptionKey,
      iv,
      base64.decode(encryptedValue),
    );
    return parseValue(decryptedValue);
  }
}
