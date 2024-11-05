import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Controllers for text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Set default values
    _nameController.text = 'Tedii Syah';
    _phoneController.text = '+1-984-350-2423';
    _emailController.text = 'omsksvetlana@gmail.com';
    _passwordController.text = '********'; // Hide real password
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C), // Dark background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            // Profile Picture
            GestureDetector(
              onTap: () {
                // Handle profile picture update
              },
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('Kuceng1.jpg'), // Example profile picture
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.edit, color: Colors.black, size: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Name Field
            buildTextField('Name', _nameController, TextInputType.name),
            const SizedBox(height: 20),
            // Phone Number Field
            buildTextField(
                'Phone Number', _phoneController, TextInputType.phone),
            const SizedBox(height: 20),
            // Email Field
            buildTextField(
                'Email', _emailController, TextInputType.emailAddress,
                readOnly: true),
            const SizedBox(height: 20),
            // Password Field
            buildTextField(
                'Password', _passwordController, TextInputType.visiblePassword,
                isPassword: true),
            const SizedBox(height: 30),
            // Forgot Password Button
            TextButton(
              onPressed: () {
                // Handle forgot password
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            // Remove Account Button
            TextButton(
              onPressed: () {
                // Handle account removal
              },
              child: const Text(
                'Remove Akun',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Build text field widget
  Widget buildTextField(String label, TextEditingController controller,
      TextInputType keyboardType,
      {bool isPassword = false, bool readOnly = false}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFF2C2C2C),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
