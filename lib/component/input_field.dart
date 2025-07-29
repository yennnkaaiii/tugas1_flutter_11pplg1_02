import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final VoidCallback? onTap;
  final bool readOnly;

  const InputField({
    super.key,
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.onTap,
    this.readOnly = false,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword ? _obscureText : false,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        keyboardType: widget.label.toLowerCase().contains("email")
            ? TextInputType.emailAddress
            : TextInputType.text,
        decoration: InputDecoration(
          labelText: widget.label,
          border: const OutlineInputBorder(),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
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
