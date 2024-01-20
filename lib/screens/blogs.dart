import 'package:flutter/material.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blogs",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 138, 7, 134),
        elevation: 20,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          BlogCard(
            title: "Introduction to Flutter",
            description:
                "Learn the basics of Flutter and how to build mobile applications with ease.",
            image: "assets/images/flutter_image.jpg", // Change the path to your image asset
          ),
          BlogCard(
            title: "Artificial Intelligence Overview",
            description:
                "Explore the fundamentals of Artificial Intelligence and its applications in the real world.",
            image: "assets/images/ai_image.jpg", // Change the path to your image asset
          ),
          BlogCard(
            title: "Machine Learning Fundamentals",
            description:
                "Understand the core concepts of Machine Learning and its importance in today's technology landscape.",
            image: "assets/images/ml_jpg.jpeg", // Change the path to your image asset
          ),
          BlogCard(
            title: "Introduction to Data Structures and Algorithms",
            description:
                "Get started with Data Structures and Algorithms, essential for efficient programming.",
            image: "assets/images/dsa_image.jpg", // Change the path to your image asset
          ),
          BlogCard(
            title: "Java vs Python: A Comparison",
            description:
                "Compare Java and Python, two popular programming languages, and understand their strengths and weaknesses.",
            image: "assets/images/java_python_image.png", // Change the path to your image asset
          ),
        ],
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const BlogCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            // Image on the left side
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 15),
            // Text content on the right side
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

