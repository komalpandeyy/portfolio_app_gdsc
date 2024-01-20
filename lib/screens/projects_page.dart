import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 187, 231),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Projects",
          style: TextStyle(
              fontFamily: 'Luckiest Guy',
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 138, 7, 134),
        elevation: 20,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Row(
                children: [
                  //First Project
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlipCard(
                      fill: Fill.fillBack,
                      front: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 224, 123, 184),
                        child: Center(child: Text("Food Ordering App",style: TextStyle(fontFamily: 'Rowdies',fontSize: 15),)),
                      ),
                      back: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 224, 123, 184),
                        child: Center(
                          child: Text(
                            "A food order app is a convenient mobile application that allows users to browse through a variety of restaurants, view their menus, and place orders for delivery or takeout",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      speed: 600,
                    ),
                  ),
                  //Second Project
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: FlipCard(
                      fill: Fill.fillBack,
                      front: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 224, 123, 184),
                        child: Center(child: Text("Quiz Application",style: TextStyle(fontFamily: 'Rowdies',fontSize: 15),)),
                      ),
                      back: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 224, 123, 184),
                        child: Center(
                          child: Text(
                            "A quiz app is a mobile or web application designed to engage users in a knowledge-testing experience. ",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      speed: 600,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}