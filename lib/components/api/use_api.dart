import 'package:http/http.dart';
import 'package:appbar/constants.dart';

class UseApi {
  void getAllUse() async {
    var client = http.Client();

    var response = await client.get(Strings.use_url);
    if(response.statusCode == 200){
      var jsonString = response.
    
    }
  }
}
