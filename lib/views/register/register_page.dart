import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:not_defteri/views/register/register_controller.dart';

// register controller bu sayfaya ekleme
class RegisterPage extends GetWidget<RegisterController> {
  static const String routeName = '/views/register/register_page';
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('register page'),
      ),
    );
  }
}
