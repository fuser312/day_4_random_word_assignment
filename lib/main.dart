import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(
    MaterialApp(
      home: PasswordGenerator(),
    ),
  );
}


class PasswordGenerator extends StatefulWidget {
  @override
  _PasswordGeneratorState createState() => _PasswordGeneratorState();
}

class _PasswordGeneratorState extends State<PasswordGenerator> {
  List words = Words.list;
  dynamic password = "";

  void viewPassword(){
    setState(() {
      password = WordPair.random(random: Random()).asCamelCase;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Password Generator", ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "$password",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                color: Colors.blue,
                child: FlatButton(
                  child: Text(
                      "New Password",
                    style: TextStyle(fontSize: 24, color: Colors.white),

                  ),
                  onPressed: viewPassword,
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}


 // you are given list of words

// Create a stateful widget called `PasswordGenerator` here

//Random Comment just to resubmit this exercise.
