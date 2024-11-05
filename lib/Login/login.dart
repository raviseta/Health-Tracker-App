import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;
  final formKey = new GlobalKey<FormState>();

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    String _email;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: textFieldView() + loginButtonView() + forgotPassView()),
        ),
      ),
    );
  }

  List<Widget> textFieldView() {
    return [
      TextFormField(
        controller: _emailController,
        decoration: const InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
        ),
        validator: (value) => value!.isEmpty ? 'Email can\'t be empty' : null,
      ),
      SizedBox(height: 16),
      TextFormField(
        controller: _passwordController,
        decoration: const InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.visibility),
        ),
        obscureText: true,
        validator: (value) =>
            value!.isEmpty ? 'Password can\'t be empty' : null,
      ),
      Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (bool? value) {
              // Handle checkbox
            },
          ),
          const Text('Remember me'),
        ],
      ),
    ];
  }

  List<Widget> loginButtonView() {
    return [
      ElevatedButton(
        onPressed: () {
          validateAndSave();
          // final email = _emailController.text;
          // final password = _passwordController.text;

          // if (email == '' || password == '') {
          //   //    _showErrorDialog("Incorrect username or password.");
          // } else {
          //   APIService().loginUser(email, password);
          // }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          minimumSize: const Size(double.infinity, 50), // Full-width button
        ),
        child: const Text('Login'),
      )
    ];
  }

  List<Widget> forgotPassView() {
    return [
      TextButton(
        onPressed: () {
          // Forgot password action
        },
        child: const Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    ];
  }
}
