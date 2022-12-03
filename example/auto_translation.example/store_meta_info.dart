
import 'package:auto_store_translate/auto_store_translate.dart';

/// 여기에 각종 스토어 정보를 적어주세요.

MyStoreInfo myStoreInfo = MyStoreInfo(
  // Play Store Title 30 characters or less 
  playStoreTitle: "I Love You",

  // Play Store Short Description 80 characters or less 
  playStoreShortDescription: "Because You Are My Life",

  // Play Store Long Description 4000 characters or less 
  playStoreFullDescription: '''
    You are my life, my love, my everything.
    I love you forever.
  ''',

  // Play Store Translation Start Language
  playStoreStartLanguage: "en",

  // 플레이스토어 제목 번역 여부
  // Play Store Title Translation
  translatePlayStoreName: true,

  // App Store Title 30 characters or less 
  appStoreTitle: "I Love You",

  // App Store Subtitle 30 characters or less 
  appStoreSubTitle: "Because You Are My Life",

  // App Store Description 4000 characters or less 
  appStringDescription: '''
  You are my life, my love, my everything.
    I love you forever.

  ''',


  // App Store Keywords 100 characters or less , separated by commas, SEO
  appStoreKeywords: "I,Love,You,This,is,appstore,seo",

  // App Store Translation Start Language
  appStoreStartLanguage: "en",

  // App Store Title Translation
  translateAppStoreName: true,

  // Whether to display the first letter of the App Store title in uppercase
  onlyFirstCharacterUpperAppName: true,

  // App Store Update Notes
  releaseNote: "fix small bug :)",

  // Home Page URL
  homepageLink: "https://github.com/melodysdreamj",

  // Privacy Policy URL
  policyPageLink: "https://github.com/melodysdreamj",
);

main() {
  AutoStoreTranslate.translateStoreInfo(
      myStoreInfo: myStoreInfo,

      // google translate api key
      googleTranslateApiKey: "INPUT_YOUR_GOOGLE_TRANSLATE_API_KEY",

      // true: translate only title, false: translate title + all
      onlyAppNameTranslate: false);
}
