import 'package:http/http.dart' as http; //http.Response
import 'dart:convert'; //jsonDecode

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    // "http" package라는걸 명시하기 위해서. 상단에도 바꿔줬음.
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
