

import 'dart:ui';

import 'package:manager_apis_mvvm/data/network/network_api_services.dart';
import 'package:manager_apis_mvvm/res/app_url/app_url.dart';

class LoginRepository {

  final _apiService  = NetworkApiServices() ;


  Future<dynamic> loginApi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.loginApi);
    return response ;
  }



}