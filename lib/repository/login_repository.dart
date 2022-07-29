import 'package:mvvm_practice/data/response/base_api_service.dart';
import 'package:mvvm_practice/data/response/networkapiservice.dart';
import 'package:mvvm_practice/utiles/network_url.dart';

class AuthRepository {
  BaseApiService baseApiService = NetworkApiService();

  Future<dynamic> loginApi(data) async {
    try {
      dynamic response =
          await baseApiService.postApiResponse(AppUrl.loginEndPint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
  Future<dynamic> registerApi(data) async {
    try {
      dynamic response =
      await baseApiService.postApiResponse(AppUrl.registerApiEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
