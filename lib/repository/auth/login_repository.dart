import 'package:bloc_part_two/config/app_url.dart';
import 'package:bloc_part_two/data/network/network_services.dart';
import 'package:bloc_part_two/models/user/user_model.dart';

class LoginRepository {
  final _api = NetworkServices();
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrl.loginApi, data);
    return UserModel.fromJson(response);
  }
}
