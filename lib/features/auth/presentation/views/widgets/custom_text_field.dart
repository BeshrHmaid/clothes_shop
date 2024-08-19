import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.prefix,
    required this.label,
    this.suffix, 
    this.hint,
    this.obscureText = false, // Default is false, not obscured
  });

  final Icon? prefix;
  final Icon? suffix;
  final String label;
  final String? hint;
  final bool obscureText; // Add this property

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText; // Initialize with the passed value
  }

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isObscured, // Use the current state to obscure the text
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xfff3f3f3),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        focusedErrorBorder: buildOutlineInputBorder(),
        label: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(widget.label),
        ),
        hintText: widget.hint ?? '',
        hintStyle: AppStyles.textStyle12,
        labelStyle: AppStyles.textStyle12,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: widget.prefix ?? const SizedBox(),
        ),
        suffixIcon: widget.suffix != null
            ? GestureDetector(
                onTap: _toggleVisibility,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility, // Toggle the icon
                  ),
                ),
              )
            : const SizedBox(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffa8a8a9),
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
