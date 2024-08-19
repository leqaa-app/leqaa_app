import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leqaa/core/utils/color_manager.dart';

class CustomOTPInputBox extends StatelessWidget {
  const CustomOTPInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide:
                const BorderSide(color: ColorManager.silverGray, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
