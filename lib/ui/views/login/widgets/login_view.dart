import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/ui/components/template/custom_scaffold.dart';
import 'package:dogfinder_app/ui/views/login/widgets/login_form_view.dart';
import 'package:dogfinder_app/ui/views/login/widgets/login_layout_view.dart';
import 'package:dogfinder_app/ui/views/login/widgets/login_pet_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.kAppBackground,
      ),
      body: Stack(
        children: const [LoginLayoutView(), LoginFormView(), LoginPetView()],
      ),
    );
  }
}
