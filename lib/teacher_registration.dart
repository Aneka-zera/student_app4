import 'package:flutter/material.dart';

class TeacherRegistrationPage extends StatefulWidget {
  @override
  _TeacherRegistrationPageState createState() => _TeacherRegistrationPageState();
}

class _TeacherRegistrationPageState extends State<TeacherRegistrationPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? selectedSubject; // For dropdown selection

  List<String> subjects = ['Math', 'Science', 'English', 'History', 'Computer Science']; // List of subjects

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            
            // Dropdown for selecting subject
            DropdownButtonFormField<String>(
              value: selectedSubject,
              items: subjects.map((String subject) {
                return DropdownMenuItem<String>(
                  value: subject,
                  child: Text(subject),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Select Subject',
                border: OutlineInputBorder(),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedSubject = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                // Handle registration logic
                print('Name: ${nameController.text}');
                print('Phone: ${phoneController.text}');
                print('Email: ${emailController.text}');
                print('Password: ${passwordController.text}');
                print('Subject: $selectedSubject');
              },
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
