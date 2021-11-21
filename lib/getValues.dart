import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

//Forked from https://zenn.dev/tris/articles/9705b93a02425f
//Thanks for @tris

Map<String,int> getFFValues(String screenName) async {
  //@screenName
  //https://twitter.com/screenName
  String url = 'https://twitter.com/$screenName';
  Uri target = Uri.parse(url);
  String selectorFollowing = "a[href=\"/$screenName/following\"]:first-child span:first-child span";
  String selectorFollowers = "a[href=\"/$screenName/followers\"]:first-child span:first-child span";

  // 取得する。
  final response = await http.get(target);

  // 下の行のコメントを外すことで、返されたHTMLを出力できる。
  // print(response.body);

  // ステータスコードをチェックする。「200 OK」以外のときはその旨を表示して終了する。
  if (response.statusCode != 200) {
    print('ERROR: ${response.statusCode}');
    return {};
  }

  // 取得したHTMLのボディをパースする。
  Document document = parse(response.body);
  Element? elFollowing = document.querySelector(selectorFollowing);
  Element? elFollowers = document.querySelector(selectorFollowers);
  if(elBuy==null||elSell==null){
    return {"NoSuchRowErr": -1.toDouble()}
  }else{
  return {"Following": int.parse(elFollowing!.text), "Followers": int.parse(elFollowers!.text)}
    }
}
List<Map<String, int>> getFFValuesForIn(List<String> screenNames) async {
  return screenNames.map((String screenName)=> await getFFValues(screenName)).toList();
}