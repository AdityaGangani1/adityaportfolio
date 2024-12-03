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
      // backgroundColor: CustomColors.bgLight1,
      backgroundColor: CustomColors.scaffoldBg,

      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Form(
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
                      const SizedBox(height: 35),
                      //1st field
                      Transform.rotate(
                        angle: -0.05, // Slight rotation
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(
                              labelText: "Enter Name",
                              hintText: "Name",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

//2nd Textbox

                      Transform.rotate(
                        angle: -0.05, // Slight rotation
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: "Enter Email",
                              hintText: "example@gmail.com",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              // String emailPattern =
                              //     r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                              // if (!RegExp(emailPattern).hasMatch(value)) {
                              //   return "Enter a valid email address";
                              // }
                              // return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      Transform.rotate(
                        angle: -0.05, // Slight rotation
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              labelText: "Enter Message",
                              hintText: "Leave Your Thought here",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Thoughts';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 26),
                      Center(
                          // child: ElevatedButton(
                          //   onPressed: _sendEmail,
                          //   style: ElevatedButton.styleFrom(
                          //       minimumSize: const Size(280, 50),
                          //       backgroundColor: CustomColors.scaffoldBg),
                          //   child: const Text(
                          //     'Send Message',
                          //     style: TextStyle(fontSize: 16),
                          //   ),
                          // ),
                          child: GestureDetector(
                              onTap: () {
                                _sendEmail();
                              },
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                // Custom Button Shape
                                Transform.rotate(
                                  angle:
                                      -0.05, // Same rotation angle as TextField
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: CustomColors.scaffoldBg
                                              .withOpacity(1),
                                          blurRadius: 4,
                                          // offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Button Text
                                const Positioned(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.send, color: Colors.white),
                                      SizedBox(width: 10),
                                      Text(
                                        "Submit",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ])))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
  }
}
