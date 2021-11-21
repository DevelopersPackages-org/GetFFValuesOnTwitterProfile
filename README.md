# GetFFValuesOnTwitterProfile

Get Following and Followers values on Twitter profiles, using web scraping.

## Use Case

### Import

Add dependencies on your pubspec.yaml

```yaml
dependencies:
  twitter_ff_Values:
    git: https://github.com/DevelopersPackages-org/GetFFValuesOnTwitterProfile.git
```

And import in dart file

```dart
import "package:twitter_ff_values/getValues.dart";
```

### For A Account

```dart
Map<String,int> getFFValues(String screenName) async
```

returns `{"Following": valFollowing, "Followers": valFollowers}` , such as `{"Following": 10, "Followers": 52}`.

### For Multiple Accounts

```dart
List<Map<String, int>> getFFValuesForIn(List<String> screenNames) async
```

returns List of result from `getFFValues()` for each screenNames.

## Thanks

Forked from [DartでWebスクレイピング](https://zenn.dev/tris/articles/9705b93a02425f)

Thanks for @tris
