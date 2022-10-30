import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputField extends StatelessWidget {
  final IconData _icon;
  final String _hintText;
  final String _errorText;
  final bool validate;
  final bool obscureText;
  final int _maxLines;
  final TextEditingController _controller;
  final Function(String)? onChanged;

  InputField(
    this._icon,
    this._hintText,
    this._errorText,
    this._maxLines,
    this._controller, {
    this.obscureText = false,
    this.validate = false,
    this.onChanged = null,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLines: _maxLines,
      autocorrect: false,
      obscureText: obscureText,
      style: const TextStyle(fontSize: 16, color: Colors.black),
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(_icon),
          hintText: _hintText,
          errorText: validate ? _errorText : null),
    );
  }
}
