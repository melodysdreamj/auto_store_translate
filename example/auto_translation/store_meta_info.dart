import 'package:auto_store_translate/auto_store_translate.dart';

/// 여기에 각종 스토어 정보를 적어주세요.

MyStoreInfo myStoreInfo = MyStoreInfo(
  // Play Store Title 30 characters or less 
  playStoreTitle: "",

  // Play Store Short Description 80 characters or less 
  playStoreShortDescription: "",

  // Play Store Long Description 4000 characters or less 
  playStoreFullDescription: '''
  

  ''',

  // Play Store Translation Start Language
  playStoreStartLanguage: "en",

  // Play Store Title Translation
  translatePlayStoreName: true,

  // App Store Title 30 characters or less 
  appStoreTitle: "",

  // App Store Subtitle 30 characters or less 
  appStoreSubTitle: "",

  // App Store Description 4000 characters or less 
  appStringDescription: '''
  

  ''',

  // App Store Keywords 100 characters or less , separated by commas, SEO
  appStoreKeywords: "",

  // App Store Translation Start Language
  appStoreStartLanguage: "en",

  // App Store Title Translation
  translateAppStoreName: true,

  // Whether to display the first letter of the App Store title in uppercase
  onlyFirstCharacterUpperAppName: true,

  // App Store Update Notes
  releaseNote: "fix small bug :)",

  // Home Page URL
  homepageLink: "",

  // Privacy Policy URL
  policyPageLink: "",
);
