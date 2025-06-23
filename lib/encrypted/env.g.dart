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
    89,
    57,
    114,
    31,
    154,
    95,
    213,
    50,
    215,
    14,
    175,
    42,
    166,
    41,
    64,
    76,
    33,
    166,
    70,
    253,
    88,
    30,
    123,
    188,
    28,
    122,
    154,
    195,
    71,
    60,
    162,
    10,
    31,
    179,
    58,
    220,
    162,
    173,
    180,
    218,
    17,
    80,
    81,
    80,
    221,
    41,
    220,
    87,
    88,
    0,
    214,
    250,
    219,
    88,
    195,
    41,
    93,
    9,
    248,
    80,
    203,
    60,
    176,
    13,
    220,
    165,
    76,
    105,
    82,
    250,
    83,
    125,
    148,
    209,
    154,
    51,
    172,
    253,
    34,
    80,
    2,
    36,
    188,
    168,
    144,
    254,
    164,
    255,
    229,
    165,
    137,
    42,
    142,
    170,
    14,
    76,
    140,
    223,
    36,
    120,
    149,
    98,
    243,
    88,
    140,
    55,
    64,
    191,
    62,
    123,
    243,
    154,
    85,
    143,
    27,
    221,
    63,
    242,
    157,
    134,
    199,
    76,
    57,
    171,
    94,
    144,
    183,
    17,
    47,
    255,
    72,
    200,
    211,
    211,
    22,
    130,
    121,
    136,
    57,
    125,
    50,
    147,
    41,
    190,
    88,
    6,
    5,
    43,
    41,
    168,
    159,
    49,
    16,
    212,
    71,
    32,
    108,
    136,
    100,
    210,
    19,
    204,
    212,
    51,
    15,
    166,
    100,
    138,
    18,
    192,
    179,
    102,
    81,
    207,
    168,
    132,
    146,
    38,
    230,
    166,
    224,
    50,
    89,
    76,
    170,
    37,
    231,
    125,
    225,
    12,
    183,
    106,
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
