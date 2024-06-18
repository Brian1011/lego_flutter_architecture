import 'dart:async';

import '../models/user.dart';

class AuthService {
  Future<User> login(String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));
    return User(id: '1', email: email);
  }

  Future<void> logout() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));
  }
}
