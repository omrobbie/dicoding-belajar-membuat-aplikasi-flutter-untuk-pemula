import 'package:flutter/material.dart';
import 'package:pock/base/theme_colors.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/screen/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _nameController = TextEditingController();

  bool _isLoginEnabled = false;
  String? _errorText;

  String name = "";

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 16),
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              spacing: 16,
              children: [
                CustomText(text: 'Welcome to pock', fontSize: 32),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _isLoginEnabled = value.trim().length > 3;

                      if (value.isEmpty) {
                        _errorText = null;
                      } else if (!_isLoginEnabled) {
                        _errorText =
                            'Your name is less than minimum characters allowed';
                      } else {
                        _errorText = null;
                      }
                    });
                  },
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    errorText: _errorText,
                    border: OutlineInputBorder(
                      borderRadius: .circular(18),
                      borderSide: BorderSide(color: ThemeColors.grass),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: .circular(18),
                      borderSide: BorderSide(color: ThemeColors.grass),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _isLoginEnabled ? _onLoginPressed : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isLoginEnabled
                        ? ThemeColors.lime
                        : Colors.grey,
                  ),
                  child: CustomText(text: 'Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onLoginPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(username: _nameController.text),
      ),
    );
  }
}
