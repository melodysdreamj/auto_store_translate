# Auto Store Translate
A library that automates translation/registration of metadata (title, description, etc.) in the App Store/Play Store.

![](https://user-images.githubusercontent.com/21379657/205428230-e60ae96e-26ea-427e-88d2-4f613963a884.jpg)
playstore & appstore translated screenshot

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/melodysdren)


## How to Use?  
### 1. Setup the config file
```yaml
dependencies:
  auto_store_translate:
```

### 2. Create a dart file in your project and paste the code below.
create dart file in your project <br>
project path > auto_translation > store_meta_info.dart<br>
![](https://user-images.githubusercontent.com/21379657/205425607-14738b99-9f44-428d-980d-5f259bdd0482.png)
<br>please fill in all the information below.<br>
```dart
import 'package:auto_store_translate/auto_store_translate.dart';

/// write your store info here.

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

main() {
  AutoStoreTranslate.translateStoreInfo(
      myStoreInfo: myStoreInfo,

      // google translate api key
      googleTranslateApiKey: "INPUT_YOUR_GOOGLE_TRANSLATE_API_KEY",

      // true: translate only title, false: translate title + all
      onlyAppNameTranslate: false);
}
```
It works even if you don't put the Google Translate api key, but you will soon reach the free limit.<br>
For a guide to getting the Google Translate api key, please refer to [this document](https://translatepress.com/docs/automatic-translation/generate-google-api-key/).
### 3. Run the code above and wait for the translation to complete.
![](https://user-images.githubusercontent.com/21379657/205425919-ed8ca26e-eceb-48b9-94d0-15e455583d00.png)

### 4. you will see the translated folder in the project.
![](https://user-images.githubusercontent.com/21379657/205426102-9fd34208-8e46-47f0-aa23-28c96e9376d4.png)

### 5. Set up fastlane for each android/ios and register the information in the play store/app store.

# registering with the PlayStore(android)

### 1. Setup the fastlane config file(android)
please refer to the [official document](https://docs.fastlane.tools/getting-started/android/setup/).

### 2. Add the code below under platform:android do in the android/fastlane/fastfile file.
```ruby
    lane :metaOnly do
      upload_to_play_store(
          track: 'internal',
          metadata_path: '../auto_translation/metadata/android',
          skip_upload_screenshots: true,
          skip_upload_changelogs: true,
          release_status: 'draft',
          aab: '../build/app/outputs/bundle/release/app-release.aab',
      )
    end
```

### 3. Open the terminal in the android project location and enter the following.
```bash
    fastlane metaOnly
```

### 4. You will see the translated information in the play store console.
![](https://user-images.githubusercontent.com/21379657/205428344-bbf8b8e6-27c7-474c-83e1-14b9864307bb.jpg)


# registering with the App Store(iOS)
### 1. Setup the fastlane config file(ios)
please refer to the [official document](https://docs.fastlane.tools/getting-started/ios/setup/).

### 2. Add the code below under platform:ios do in the ios/fastlane/fastfile file.
```ruby
    lane :metaOnly do
        get_certificates          
        get_provisioning_profile  
        deliver(
            metadata_path: '../auto_translation/metadata/ios',
            force: true, # Skip HTMl report verification
            skip_screenshots: true,
            skip_binary_upload: true,
        )
    end
```

### 3. Open the terminal in the ios project location and enter the following.
```bash
    fastlane metaOnly
```

### 4. You will see the translated information in the app store connect.
![](https://user-images.githubusercontent.com/21379657/205428347-43a8e9bf-e6a4-43b9-94db-22a3869d0a04.jpg)






