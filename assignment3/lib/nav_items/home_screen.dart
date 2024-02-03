import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 124, 181, 227),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                const SizedBox(height: 10), // space
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  color: Colors.amber,
                  elevation: 10,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(48, 18, 48, 18),
                    child: Text(
                      '',
                    ),
                  ),
                ),
                const SizedBox(height: 10), // space
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: const Text(
                    'Class 3 Class 4',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 25), // space
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        offset: const Offset(0, -10),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25), // space
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                  child: const Text(
                    'influxdev.com',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 25), // space
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.5),
                            offset: const Offset(0, 3),
                            blurRadius: 40,
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Text(
                          'Red',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 50,
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.5),
                              offset: const Offset(0, 3),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Text(
                            'Purple',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 100,
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.5),
                              offset: const Offset(0, 3),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Text(
                            'Yellow',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //children
                ),
              ], //children
            ),
          ], //children
        ),
      ),
    );
  }
}
