import 'package:flutter/widgets.dart';
import 'package:flutter_simple_todo/ui/widgets/input_field.dart';

class MultiLineTextField extends StatelessWidget {
  final IconData _icon;
  final String _hintText;
  final String _errorText;
  final bool validate;
  final TextEditingController _controller;

  MultiLineTextField(
      this._icon, this._hintText, this._errorText, this._controller,
      {this.validate = false});

  @override
  Widget build(BuildContext context) {
    return InputField(
      _icon,
      _hintText,
      _errorText,
      6,
      _controller,
      obscureText: false,
      validate: validate,
    );
  }
}
