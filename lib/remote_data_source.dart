import 'package:clean_api_calls/http_delegate.dart';

import 'models/user_detail.dart';

class RemoteDataSource with HttpDelegate {
  Future<UserDetail> getUserDetails(String userId) async {
    //preparing the get api url
    const apiUrl = 'https://halinhit.com';
    //making the get api call
    final apiResponse = await getRequest(apiUrl);
    return UserDetail.fromJson(apiResponse);
  }
}