import 'package:bloc_part_two/models/user/user_model.dart';

abstract class LoginRepository {
  @override
  Future<UserModel> loginApi(dynamic data);
}
