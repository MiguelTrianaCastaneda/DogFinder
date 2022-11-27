import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class LoginRememberForgotView extends StatelessWidget {
  const LoginRememberForgotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 5.0),
          child: RoundCheckBox(
            onTap: (selected) {},
            size: 12,
            border: Border.all(
              width: 1,
              color: Colors.transparent,
            ),
            checkedColor: Colors.green,
            uncheckedColor: AppColor.kAppColorButtons,
            checkedWidget:
                const Icon(Icons.check_rounded, color: Colors.white, size: 8.0),
            uncheckedWidget:
                const Icon(Icons.close, color: Colors.white, size: 8.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 5.0),
          child: Text(
            "Remember me",
            style: AppTheme.kStyleRememberLabel(),
          ),
        ),
        const SizedBox(
          width: 155.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 5.0),
          child: Text(
            "Forgot Password?",
            style: AppTheme.kStyleForgotLabel(),
          ),
        )
      ],
    );
  }
}
