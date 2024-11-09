import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app/screens/menu.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            //header row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'March',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                GestureDetector(
                  onTap: (){
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
            //calendar view
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Sun',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                //second
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Mon',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                //third
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Tue',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                //fourth,
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Wed',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                //fifth
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Thu',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                //sixth
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Fri',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                      Text(
                        '6',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                //seventh
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Sat',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),
                      Text(
                        '7',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
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
            const SizedBox(height: 10,),

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
            const SizedBox(
              height: 10,
            ),
            //task card four
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
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
