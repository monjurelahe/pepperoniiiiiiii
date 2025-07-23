import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pepperoniiiii/core/const/app_textstyles.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool isPassword;
  final TextInputType inputType;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.isPassword = false,
    this.inputType = TextInputType.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: double.infinity,
      child: TextFormField(
        style: AppText.textField,
        controller: widget.controller,
        obscureText: widget.isPassword ? _obscureText : false,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          hintText: widget.hint,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_off_outlined,
                    color: Colors.black87,
                    size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
