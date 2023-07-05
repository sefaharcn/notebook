import 'package:get/get.dart';
import 'package:not_defteri/views/add_note/add_note_page.dart';
import 'package:not_defteri/views/home/home_page.dart';
import 'package:not_defteri/views/login/login_page.dart';
import 'package:not_defteri/views/register/register_page.dart';

List<GetPage> getPages = [
  GetPage(name: LoginPage.routeName, page: () => const LoginPage()),
  GetPage(name: RegisterPage.routeName, page: () => const RegisterPage()),
  GetPage(name: HomePage.routeName, page: () => const HomePage()),
  GetPage(name: AddNote.routeName, page: () => const AddNote()),
];
