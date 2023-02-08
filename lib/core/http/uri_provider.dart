
class UriProvider {

  Uri getBaseUri(
    String path, 
    [
      String? query, 
      Map<String, dynamic>? queryParameters,
    ]
  ) {
    return Uri(
        scheme: 'https',
        host: 'bazar.rdewan.dev',
        path: path,
        query: query,
        queryParameters: queryParameters,
      );
  }
}