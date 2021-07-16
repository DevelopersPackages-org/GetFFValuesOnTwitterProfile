# GetFFValuesOnTwitterProfile

Get Following and Followers values on Twitter profiles, using web scraping.

## Use Case

### For A Account

```dart
Map<String,int> getFFValues(String screenname) async
```

returns `{"Following": valFollowing, "Followers": valFollowers}` , such as `{"Following": 10, "Followers": 52}`.

### For Multiple Accounts

```dart
List<Map<String, int>> getFFValuesForIn(List<String> screennames) async
```

returns List of result from `getFFValues()` for each screennames.

## Thanks

Forked from [DartでWebスクレイピング](https://zenn.dev/tris/articles/9705b93a02425f)
Thanks for @tris
