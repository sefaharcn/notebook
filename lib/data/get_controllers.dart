import 'package:get/get.dart';
import 'package:not_defteri/views/add_note/add_note_controller.dart';
import 'package:not_defteri/views/home/home_controller.dart';
import 'package:not_defteri/views/login/login_controller.dart';
import 'package:not_defteri/views/register/register_controller.dart';

Future getControllers() async {
  Get.create(() => LoginController(), permanent: false);
  Get.create(() => RegisterController(), permanent: false);
  Get.create(() => HomeController(), permanent: false);
  Get.create(() => AddNoteController(), permanent: false);
}
