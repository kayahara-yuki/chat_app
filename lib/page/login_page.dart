
import 'package:aaa/components/mv_textfield.dart';
import 'package:aaa/components/my_button.dart';
import 'package:flutter/material.dart';

import '../service/auth/auth_service.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwlController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
          _emailController.text, _pwlController.text);
    }
    catch(e){
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme
                  .of(context)
                  .colorScheme
                  .primary,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "おかえりなさい、寂しかったです！",
              style: TextStyle(
                color: Theme
                    .of(context)
                    .colorScheme
                    .primary,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwlController,
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: "Login",
              onTap: () => login(context),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "登録していませんか？",
                  style: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "今すぐ登録",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Theme
                          .of(context)
                          .colorScheme
                          .primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
