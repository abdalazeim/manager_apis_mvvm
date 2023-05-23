

import 'dart:ui';

import 'package:manager_apis_mvvm/data/network/network_api_services.dart';
import 'package:manager_apis_mvvm/models/home/user_list_model.dart';
import 'package:manager_apis_mvvm/res/app_url/app_url.dart';

class HomeRepository {

  final _apiService  = NetworkApiServices() ;

  Future<UserListModel> userListApi() async{
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response) ;
  }


}