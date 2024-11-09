import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_app/screens/authentication.dart';
import 'package:task_app/screens/home_page.dart';
import 'package:task_app/screens/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  bool isLoading = false;

  //sign up function
  Future<void> _signUp() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill in all fields"),
        ),
      );
      return;
    }
    if (!_emailController.text.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter a valid email"),
        ),
      );
      return;
    }
    setState(() {
      isLoading = true;
    });
    // Proceed with sign up
    User? user = await _authService.signUp(
      _emailController.text,
      _passwordController.text,
    );
    setState(() {
      isLoading = false;
    });
    if (user != null) {
      //store user data in shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isSignedIn', true);
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Sign up successful")),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Sign up failed")),
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 79, 78, 78),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  decoration: TextDecoration.none),
            ),
            const SizedBox(
              height: 20,
            ),
            //name field
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 41, 41, 41),
                  fontFamily: 'Poppins',
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // Rounded corners
                  borderSide: BorderSide(
                      color: Colors.white), // White border when focused
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Email
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 41, 41, 41),
                  fontFamily: 'Poppins',
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // Rounded corners
                  borderSide: BorderSide(
                      color: Colors.white), // White border when focused
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //password
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 41, 41, 41),
                  fontFamily: 'Poppins',
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // Rounded corners
                  borderSide: BorderSide(
                      color: Colors.white), // White border when focused
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //signup button
            isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFDF485),
                      minimumSize: const Size(200, 40),
                    ),
                    onPressed: () {
                      _signUp();
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
            const SizedBox(
              height: 30,
            ),
            //login
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                'Log in',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Poppins',
                  decorationColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
