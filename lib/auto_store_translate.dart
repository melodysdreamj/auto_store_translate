library auto_store_translate;

import 'callable/core_my/my_screenshot_helper/spell.dart';
import 'callable/core_my/my_translate_store_info/entity/my_store_info.dart';
import 'callable/core_my/my_translate_store_info/spell.dart';

export 'callable/core_my/my_translate_store_info/entity/my_store_info.dart';

class AutoStoreTranslate {
  static translateStoreInfo({
    required MyStoreInfo myStoreInfo,
    required String googleTranslateApiKey,
  }) {
    MyTranslateStoreInfoSpell()
        .translateStoreInfo(myStoreInfo, googleTranslateApiKey);
  }

  static translateStoreInfoOnlyAppName({
    required MyStoreInfo myStoreInfo,
    required String googleTranslateApiKey,
  }) {
    MyTranslateStoreInfoSpell()
        .translateStoreInfoOnlyAppName(myStoreInfo, googleTranslateApiKey);
  }

  static Future removeUnderBarInGalaxy() async {
    await MyScreenshotHelperSpell().removeUnderBarInGalaxy();
  }

  static Future prepareGenerateScreenshotFrame(
    MyStoreInfo myStoreInfo,
    String googleTranslateApiKey,
  ) async {
    await MyScreenshotHelperSpell()
        .prepareGenerateScreenshotFrame(myStoreInfo, googleTranslateApiKey);
  }

  static Future distributeScreenshotFrameFile() async {
    await MyScreenshotHelperSpell().distributeScreenshotFrameFile();
  }
}
