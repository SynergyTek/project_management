import 'package:flutter/material.dart';
import 'package:project_management/app.dart';
import 'package:project_management/repo/authentication_repo/authentication_repo.dart';
import 'package:project_management/repo/user_repo/user_repo.dart';

void main() {
  runApp(App(
    //initialising repository
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
}
