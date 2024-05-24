import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DLogOutLinedTextField(
                controller: TextEditingController(),
                label: 'Username or Email',
                textInputType: TextInputType.text,
                height: 40,
              ),
              8.spacingHeight,
              DLogOutLinedTextField(
                controller: TextEditingController(),
                label: 'Password',
                textInputType: TextInputType.text,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
