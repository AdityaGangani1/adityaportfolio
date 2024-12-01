import 'package:adityaportfolio/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailForm extends StatefulWidget {
  const EmailForm({super.key});

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  void _sendEmail() async {
    if (_formKey.currentState!.validate()) {
      final Uri gmailUri = Uri.parse(
          "https://mail.google.com/mail/?view=cm&fs=1&to=sungangani7272@gmail.com&su=Portfolio Inquiry&body=Name: ${_nameController.text}\nEmail: ${_emailController.text}\nMessage: ${_messageController.text}");

      if (await canLaunchUrl(gmailUri)) {
        await launchUrl(gmailUri);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Unable to open Gmail")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgLight1,
      body: Expanded(
        
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Get in Touch",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _nameController,
                style: const TextStyle(
                  color: CustomColors.scaffoldBg,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    filled: true,
                    fillColor: CustomColors.whitePrimary,
                    focusedBorder: getInputBorder,
                    enabledBorder: getInputBorder,
                    border: getInputBorder,
                    hintText: "",
                    hintStyle: TextStyle(color: CustomColors.hintDark)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                style: const TextStyle(
                  color: CustomColors.scaffoldBg,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    filled: true,
                    fillColor: CustomColors.whitePrimary,
                    focusedBorder: getInputBorder,
                    enabledBorder: getInputBorder,
                    border: getInputBorder,
                    hintText: "",
                    hintStyle: TextStyle(color: CustomColors.hintDark)),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                maxLines: 2,
                controller: _messageController,
                style: const TextStyle(
                  color: CustomColors.bgLight2,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    filled: true,
                    fillColor: CustomColors.whitePrimary,
                    focusedBorder: getInputBorder,
                    enabledBorder: getInputBorder,
                    border: getInputBorder,
                    hintText: "",
                    hintStyle: TextStyle(color: CustomColors.hintDark)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: _sendEmail,
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(280, 50),
                      backgroundColor: CustomColors.scaffoldBg),
                  child: const Text(
                    'Send Message',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
  }
}
