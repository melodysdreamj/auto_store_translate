library auto_store_translate;

export 'callable/core_my/my_screenshot_helper/entity/my_screenshot_info.dart';
import 'callable/core_my/my_screenshot_helper/entity/my_screenshot_info.dart';
import 'callable/core_my/my_screenshot_helper/spell.dart';
import 'callable/core_my/my_translate_store_info/entity/my_store_info.dart';
import 'callable/core_my/my_translate_store_info/spell.dart';

export 'callable/core_my/my_translate_store_info/entity/my_store_info.dart';

class AutoStoreTranslate {
  static translateStoreInfo({
    required MyStoreInfo myStoreInfo,
    required String googleTranslateApiKey,
    bool onlyAppNameTranslate = false,
  }) {
    if(onlyAppNameTranslate) {
      MyTranslateStoreInfoSpell().translateStoreInfoOnlyAppName(myStoreInfo, googleTranslateApiKey);
    } else {
      MyTranslateStoreInfoSpell().translateStoreInfo(myStoreInfo, googleTranslateApiKey);
    }
  }

  static Future removeUnderBarInGalaxy() async {
    await MyScreenshotHelperSpell().removeUnderBarInGalaxy();
  }

  static Future prepareGenerateScreenshotFrame(
      MyScreenshotInfo myScreenshotInfo,
    String googleTranslateApiKey,
  ) async {
    await MyScreenshotHelperSpell()
        .prepareGenerateScreenshotFrame(myScreenshotInfo, googleTranslateApiKey);
  }

  static Future distributeScreenshotFrameFile() async {
    await MyScreenshotHelperSpell().distributeScreenshotFrameFile();
  }
}
