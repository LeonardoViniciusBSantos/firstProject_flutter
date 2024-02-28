import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/home/home.view.dart';

class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  static const email = 'leo@gmail.com';
  static const password = '123';

  void tryToLogin() {
    switch (emailInput.text) {
      case email:
        checkPassword();
        break;
      case '':
        printError('Insira um email');
        break;
      default:
        printError('Email inválido');
    }
  }

  void checkPassword() {
    switch (passwordInput.text) {
      case password:
        login();
        break;
      case '':
        printError('Insira uma senha');
        break;
      default:
        printError('Senha incorreta');
    }
  }

  void printError(String error) {
    print(error);
  }

  void login() {
    Get.to(const HomeView());
  }

}
