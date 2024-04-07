import 'package:flutter/material.dart';
import 'package:resturant_app/components/custom_button.dart';
import 'package:resturant_app/components/custom_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .06,
                ),

                // logo or Icon
                Icon(
                  Icons.lunch_dining_outlined,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 120,
                ),
                // Welcome message or Slogan
                Center(
                  child: Text(
                    "Let's create an account for you",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
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
                CustomTextFormField(
                  // prefixIcon: Icon(
                  //   Icons.password,
                  //   color: Theme.of(context).colorScheme.inversePrimary,
                  // ),
                  controller: confirmPasswordController,
                  hintText: "Confirm password",
                  obscure: true,
                ),
                const SizedBox(
                  height: 25,
                ),

                CustomButton(
                  onTap: () {},
                  text: 'Sign up',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'already have an account?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Login now',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
