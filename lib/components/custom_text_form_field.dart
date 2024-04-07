import 'package:flutter/material.dart';
// import 'package:validators/validators.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.prefixIcon,
    this.hintText,
    this.onChange,
    this.suffixIcon,
    this.obscure,
    this.validate,
    this.keyboardType,
    this.fillColor,
    this.maxLines = 1,
    this.textPadding,
    this.onSaved,
  });
  final bool? obscure;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final String? hintText;
  final Function(String)? onChange;
  final String? Function(String?)? validate;
  final TextInputType? keyboardType;
  final int maxLines;
  final Color? fillColor;
  final EdgeInsetsGeometry? textPadding;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: textPadding ?? const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: controller,
        onSaved: onSaved,
        maxLines: maxLines,
        keyboardType: keyboardType ?? TextInputType.name,
        validator: validate,
        obscureText: obscure ?? false,
        onChanged: onChange,
        decoration: InputDecoration(
          fillColor: fillColor ?? Colors.transparent,
          filled: true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Theme.of(context).colorScheme.tertiary),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: Theme.of(context).colorScheme.primary)),
          // ignore: prefer_const_constructors
          errorBorder: OutlineInputBorder(
            borderSide: (const BorderSide(
                width: 2, color: Color.fromRGBO(183, 28, 28, 0.6))),
          ),

          // ignore: prefer_const_constructors
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 2, color: Color.fromRGBO(183, 28, 28, .6))),
        ),
      ),
    );
  }
}
