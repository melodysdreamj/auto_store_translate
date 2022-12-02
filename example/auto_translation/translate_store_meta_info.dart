import 'package:auto_store_translate/auto_store_translate.dart';

import 'store_meta_info.dart';

main() {
  bool onlyTitleTranslate = false; // true: 제목만 번역, false: 제목+전체 번역

  if (onlyTitleTranslate) {
    AutoStoreTranslate.translateStoreInfoOnlyAppName(
        myStoreInfo: myStoreInfo,
        googleTranslateApiKey: "INPUT_YOUR_GOOGLE_TRANSLATE_API_KEY");
  } else {
    AutoStoreTranslate.translateStoreInfo(
        myStoreInfo: myStoreInfo,
        googleTranslateApiKey: "INPUT_YOUR_GOOGLE_TRANSLATE_API_KEY");
  }
}
