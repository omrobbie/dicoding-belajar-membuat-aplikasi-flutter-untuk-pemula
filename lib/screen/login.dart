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
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Dashboard(username: _nameController.text),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(ThemeColors.lime),
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
}
