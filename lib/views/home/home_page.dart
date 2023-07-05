import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:not_defteri/views/home/home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});
  static const String routeName = '/views/home/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
