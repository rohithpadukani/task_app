import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app/screens/menu.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({super.key});

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  final TextEditingController _taskNameController = TextEditingController();
  final TextEditingController _taskDescriptionController =
      TextEditingController();

  List<Map<String, String>> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            //menu icon
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 0,
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
            //task name text
            const Text(
              'Add a new task here',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //task name
            TextField(
              controller: _taskNameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Name of the Task',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 79, 78, 78),
                    fontFamily: 'Poppins',
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  ))),
            ),
            const SizedBox(
              height: 10,
            ),

            //task description
            TextField(
              controller: _taskDescriptionController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Write the description',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 79, 78, 78),
                    fontFamily: 'Poppins',
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 15,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  ))),
            ),
            const SizedBox(
              height: 30,
            ),
            //tag row
            _buildRow(Icons.bookmark, 'Tag', 'Add Tag'),
            const SizedBox(
              height: 10,
            ),
            //priority row
            _buildRow(Icons.star, 'Priority', 'Add Priority'),
            const SizedBox(
              height: 10,
            ),
            //deadline date
            _buildRow(
              Icons.calendar_today,
              'Deadline',
              'Add date',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFDF485),
              ),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    _addTask();
                  },
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //method to build reusable row
  Widget _buildRow(IconData icon, String leftText, String rightText,
      {VoidCallback? onRightTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.white, size: 30),
            const SizedBox(width: 10),
            Text(
              leftText,
              style: const TextStyle(
                color: Color.fromARGB(255, 157, 157, 157),
                fontFamily: 'Poppins',
                fontSize: 18,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: onRightTap,
          child: Row(
            children: [
              const Icon(Icons.add, color: Colors.white, size: 15),
              Text(
                rightText,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //method to add new task to list
  void _addTask() {
    String taskName = _taskNameController.text;
    String taskDescrtipion = _taskDescriptionController.text;

    if (taskName.isNotEmpty && taskDescrtipion.isNotEmpty) {
      setState(() {
        tasks.add({'name': taskName, 'description': taskDescrtipion});
      });

      //clear textfield
      _taskNameController.clear();
      _taskDescriptionController.clear();

      // Show a confirmation message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Task "$taskName" added successfully!')),
      );
    } else {
      // Show an error if either field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both name and description')),
      );
    }
  }
}
