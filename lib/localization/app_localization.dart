import 'package:get/get.dart';
import 'en_us/en_us_translations.dart';
import 'ko_kr/ko_kr_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUs,
    'ko_KR': koKr,
  };

}
