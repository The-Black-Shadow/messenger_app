import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final VoidCallback? onSuffixIconPressed;

  const CustomTextfield({
    super.key,
    required this.textController,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.validator,
    this.onSuffixIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: onSuffixIconPressed != null
            ? IconButton(
                icon: suffixIcon ?? const Icon(Icons.visibility),
                onPressed: onSuffixIconPressed,
              )
            : suffixIcon,
        prefixIcon: prefixIcon,
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      focusNode: focusNode,
      validator: validator,
    );
  }
}
