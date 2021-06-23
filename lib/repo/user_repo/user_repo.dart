import 'dart:async';

import 'package:uuid/uuid.dart';

import 'models/models.dart';
//user repository for getting the and setting the user details
class UserRepository {
  User? _user;
//This method will get the user details
  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = User(const Uuid().v4()),
    );
  }
}
