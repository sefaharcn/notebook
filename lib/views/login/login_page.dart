import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:not_defteri/data/src/colors.dart';
import 'package:not_defteri/views/login/login_controller.dart';

import '../../data/src/images.dart';
import '../../data/src/string.dart';

class LoginPage extends GetWidget<LoginController> {
  static const String routeName = '/views/login/login_page';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: const Text('Benim Not Defterim'),
        ),
        body: _buildbody());
  }

  Widget _buildbody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      //SingleChildScrollView clooum widget taşmasını engeller  ekran kayar
      child: SingleChildScrollView(
        child: Column(
          //column altındaki bütün widgetları aynı ende yapar
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildImage(),
            _buildSpace(20),
            _buildUserNameTextField(),
            _buildSpace(20),
            _buildPasswordTextField(),
            _buildSpace(30),
            _buildButton()
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      loginPicture,
      height: Get.height * .2,
    );
  }

  Widget _buildUserNameTextField() {
    return Material(
      elevation: 10,
      color: textFieldColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
            controller: controller.usernameController,
            // textInputAction: TextInputAction.next, bu kod klavye açılınca bitti yerine ileri tuşunu çıkartır
            //böylese kullanısı adını yazdında ileri basında parola textfield geçer.
            textInputAction: TextInputAction.next,
            //obscureText: true, şifre yazarken görünmez yapar
            obscureText: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: userLoginText,
            )),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Material(
      //elevation: 10, gölge eklemek için kullanılır
      elevation: 10,
      color: textFieldColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
            controller: controller.passwordController,
            //obscureText: true, şifre yazarken görünmez yapar
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: passwordLoginText,
            )),
      ),
    );
  }

  Widget _buildButton() {
    const double size = 40;
    return SizedBox(
      height: size,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Giriş',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: mainColor),
      ),
    );
  }

  Widget _buildSpace(double a) {
    return SizedBox(height: a);
  }
}
