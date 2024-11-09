import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_app/screens/menu.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
              height: 20,
            ),
            const Text(
              'Today',
              style: TextStyle(
                  color: Color.fromARGB(255, 129, 129, 129),
                  fontFamily: 'Poppins',
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            //tasks slider one
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
            const Text(
              'Tomorrow',
              style: TextStyle(
                  color: Color.fromARGB(255, 129, 129, 129),
                  fontFamily: 'Poppins',
                  fontSize: 18),
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
            //task card two

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
            SizedBox(
              height: 10,
            ),
            //task card three
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
          ],
        ),
      ),
    );
  }
}
