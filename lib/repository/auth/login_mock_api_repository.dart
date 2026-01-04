import 'package:bloc_part_two/data/network/network_services.dart';
import 'package:bloc_part_two/models/user/user_model.dart';
import 'package:bloc_part_two/repository/auth/login_repository.dart';

class LoginMockApiRepository implements LoginRepository {
  final _api = NetworkServices();
  @override
  Future<UserModel> loginApi(dynamic data) async {
    Future.delayed(Duration(seconds: 3));
    final response = {"token": "ajfajdfdakfl;alf"};
    return UserModel.fromJson(response);
  }
}
