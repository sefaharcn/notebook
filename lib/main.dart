import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:not_defteri/views/login/login_page.dart';

import 'data/get_controllers.dart';
import 'data/routing/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //get controllerdaki bütün paketler yüklenmeden bu fonksiyon dışarı devam etmez
  //yani paketleri tek tek kurar işlem bitmeden dışarı çıkmaz.
  Future<void> main() async {
    await getControllers();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    main();
    return GetMaterialApp(
      getPages: getPages,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
