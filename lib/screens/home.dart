import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_app/screens/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      //main column
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //header text column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'You have 6 tasks',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'for today!',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Menu()),
                    );
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //view all text
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'VIEW ALL',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xffFDF485),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //tasks slider
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 79, 78, 78),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'finish monthly',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),
                  const Text(
                    'reporting!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: LinearPercentIndicator(
                      width: 300,
                      lineHeight: 14.0,
                      percent: 0.4,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.white,
                      barRadius: const Radius.circular(20),
                      trailing: const Text(
                        '40%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 140,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffFDF485),
                    ),
                    child: const Center(
                      child: Text(
                        'Open Task',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //this week agenda and view all text
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'This week agenda',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'VIEW CALENDAR',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xffFDF485),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //task card one
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 79, 78, 78),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Project research',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),
                  Text(
                    'Do research for that one project',
                    style: TextStyle(
                        color: Color.fromARGB(255, 118, 117, 117),
                        fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.flag,
                        color: Color.fromARGB(255, 118, 117, 117),
                      ),
                      Text(
                        'Tomorrow, 9:00 AM',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //task card 2
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 79, 78, 78),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Complete ALL Tasks',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),
                  Text(
                    'Don\'t postpone this, just reply to them',
                    style: TextStyle(
                        color: Color.fromARGB(255, 118, 117, 117),
                        fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.flag,
                        color: Color.fromARGB(255, 118, 117, 117),
                      ),
                      Text(
                        'Tomorrow, 9:00 AM',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //categories section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //work
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffFDF485),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.work,
                            size: 28,
                          ),
                        ),
                        const Text(
                          'Work',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    //family
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffFDF485),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.people,
                            size: 28,
                          ),
                        ),
                        const Text(
                          'Family',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    //freelance
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffFDF485),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.laptop,
                            size: 28,
                          ),
                        ),
                        const Text(
                          'Freelance',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    //planning
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffFDF485),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.quiz,
                            size: 28,
                          ),
                        ),
                        const Text(
                          'Planning',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //navigation bar bottom
          ],
        ),
      ),
    );
  }
}
