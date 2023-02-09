
import 'package:http/http.dart';


extension HttpResponseError on Response {
  String httpErrorHandler() => 'Request failed - Status Code: $statusCode - Reason:$reasonPhrase';
}