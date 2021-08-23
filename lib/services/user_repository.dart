import 'package:bloc_cubit_example/models/user.dart';
import 'package:bloc_cubit_example/services/user_api_provider.dart';


class UsersRepository {
  final UserProvider _usersProvider = UserProvider();
  Future<List<User>> getAllUsers() => _usersProvider.getUser();
}