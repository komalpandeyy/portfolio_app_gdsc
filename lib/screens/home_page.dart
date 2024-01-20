import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 187, 231),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 138, 7, 134),
        elevation: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("assets/images/girl.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Komal Pandey',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
            GestureDetector(
              onTap: () {
                final Uri url = Uri.parse(
                    'https://drive.google.com/file/d/1Z7ISm9osTsTijHVkLfqIvHS0wsVQZtHy/view?usp=drive_link');
                _launchUrl(url);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 123, 184),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.file_copy_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Resume",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                final Uri url = Uri.parse(
                    'https://www.linkedin.com/in/komalpandey01/');
                _launchUrl(url);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 123, 184),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "LinkedIn",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                final Uri url = Uri.parse('https://github.com/komalpandeyy');
                _launchUrl(url);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 123, 184),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      "GitHub",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                final Uri url = Uri.parse('#');
                _launchUrl(url);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 123, 184),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.code,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Leetcode",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                final Uri url = Uri.parse('https://leetcode.com/');
                _launchUrl(url);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 123, 184),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Instagram",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'projects_page');
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 123, 184),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.computer,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Projects",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'blogs');
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 123, 184),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.blog,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Blogs",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
