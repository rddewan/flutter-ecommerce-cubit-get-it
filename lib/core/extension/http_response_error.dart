
import 'package:http/http.dart';


extension HttpResponseError on Response {
  String httpErrorHandler() => 'Request failed \nStatus Code: $statusCode\n Reason:$reasonPhrase';
}