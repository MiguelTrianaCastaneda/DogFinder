import 'package:flutter/material.dart';

import 'package:dogfinder_app/theme/app_color.dart';
import 'package:dogfinder_app/theme/app_theme.dart';

class TextFieldLogin extends StatefulWidget {
  const TextFieldLogin(
      {Key? key,
      this.hintextvalue,
      this.textlabel,
      this.topSpace,
      this.validator,
      this.textEditingController})
      : super(key: key);

  final String? hintextvalue;
  final String? textlabel;
  final int? topSpace;
  final String? Function(String?)? validator;
  final TextEditingController? textEditingController;

  @override
  State<TextFieldLogin> createState() => _TextFieldLoginState();
}

class _TextFieldLoginState extends State<TextFieldLogin> {
  var obs = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(
                top: widget.topSpace == 0 ? 80.0 : 40.0, left: 25.0),
            child: Text(
              widget.textlabel!,
              style: AppTheme.kStyleLoginLabels(),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 35.0),
          child: TextFormField(
            controller: widget.textEditingController,
            validator: widget.validator,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: AppColor.kAppColorButtons,
                fontSize: 13.0),
            obscureText: widget.topSpace == 0 ? false : obs,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                  left: 1.0, top: 10.0, right: 15.0, bottom: 2.0),
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 12.0,
              ),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.kAppColorSubTittle)),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.kAppColorButtons)),
              hintText: widget.hintextvalue,
              suffixIcon: widget.topSpace == 1
                  ? SizedBox(
                      height: 30.0,
                      width: 30.0,
                      child: IconButton(
                        icon: const Icon(Icons.remove_red_eye_outlined),
                        onPressed: () {
                          setState(() {
                            obs == true ? obs = false : obs = true;
                          });
                        },
                      ),
                    )
                  : null,
              isDense: true,
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 15.0, minWidth: 15.0),
            ),
          ),
        ),
      ],
    );
  }
}
