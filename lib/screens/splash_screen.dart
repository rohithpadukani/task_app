import 'package:flutter/material.dart';
import 'package:task_app/screens/sign_up.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 100,
          ),
          //image container
          const Center(
            child: Image(
              height: 300,
              image: AssetImage(
                'assets/images/working.png',
              ),
            ),
          ),
          //text container
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Get Organized',
                  style: TextStyle(
                    fontFamily: 'Anton',
                    color: Color(0xffFDF485),
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Manage your work,',
                  style: TextStyle(
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 117, 117, 116),
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'life, hobbies easily!',
                  style: TextStyle(
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 117, 117, 116),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //get started button
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffFDF485),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Anton'),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
