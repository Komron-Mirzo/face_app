import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const FaceApp());

class FaceApp extends StatefulWidget {
  const FaceApp({Key? key}) : super(key: key);

  @override
  State<FaceApp> createState() => _FaceAppState();
}

class _FaceAppState extends State<FaceApp> {
  int leftFacePic = 1;
  int rightFacePic = 2;
  void facePicture() {
    setState(() {
      leftFacePic = Random().nextInt(6) + 1;
      rightFacePic = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0x77ffe7d1),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const SizedBox(
            child: Text('My Third Project: Face App'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: (TextButton(
                      onPressed: () {
                        facePicture();
                      },
                      child: Image.asset('images/face$leftFacePic.png'),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: (TextButton(
                      onPressed: () {
                        facePicture();
                      },
                      child: Image.asset('images/face$rightFacePic.png'),
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Mr.Happy',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
