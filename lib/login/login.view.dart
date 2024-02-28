import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/login/widgets/loginButton.widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Login'))),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(12.0),
        children: const [
          LoginButton()
        ],
      ),
    );
  }
}
