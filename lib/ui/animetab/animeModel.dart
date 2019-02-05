//
//get() async {
//  var httpClient = new HttpClient();
//  var uri = new Uri.http(
//      'example.com', '/path1/path2', {'param1': '42', 'param2': 'foo'});
//  var request = await httpClient.getUrl(uri);
//  var response = await request.close();
//  var responseBody = await response.transform(UTF8.decoder).join();
//}
