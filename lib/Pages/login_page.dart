import 'package:flutter/material.dart';
import 'package:resturant_app/Pages/home_page.dart';
import 'package:resturant_app/components/custom_button.dart';
import 'package:resturant_app/components/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    //
    //
    //
    //
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .06,
                ),
                // logo or Icon
                Icon(
                  Icons.lunch_dining_outlined,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 140,
                ),
                // Welcome message or Slogan
                Text(
                  'food delivery app',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  height: 25,
                ),
                // email text field
                CustomTextFormField(
                  // prefixIcon: Icon(
                  //   Icons.email,
                  //   color: Theme.of(context).colorScheme.inversePrimary,
                  // ),
                  controller: emailController,
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 25,
                ),
                // password text field
                CustomTextFormField(
                  // prefixIcon: Icon(
                  //   Icons.password,
                  //   color: Theme.of(context).colorScheme.inversePrimary,
                  // ),
                  controller: passwordController,
                  hintText: "Password",
                  obscure: true,
                ),
                const SizedBox(
                  height: 25,
                ),

                CustomButton(
                  onTap: login,
                  text: 'sign in',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Register now',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
