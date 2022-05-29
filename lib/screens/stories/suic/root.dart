import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Fighting with Depression",
      description:
          "Jacob is a 17 year old boy that fights with depression. He feels very unmotivated and sad and the tests that are coming up add to the already unimaginable pressure and he thinks the easiest solution is to do the unthinkable.",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: SUI1()),
];

class SUI extends StatelessWidget {
  final Choice currChoice;
  SUI({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class SUI1 extends StatelessWidget {
  SUI1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Gets help',
        description: 'It is for the best',
        img: "",
        endMessage: "",
        nextWidget: SUI11(
            currChoice: Choice(
                title: 'Gets help',
                description: 'It is for the best',
                img: "",
                definition: "",
                endMessage:
                    "Jacob decides to discuss the matter with his most trusted people and finds a good therapist. With counseling, hard work and perseverance, he passed his exams and saw the positive light of life again. ",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'He gets no help',
        description: "It will pass away",
        definition: "",
        img: "",
        endMessage: "",
        nextWidget: SUI12(
            currChoice: Choice(
                title: 'He gets no help',
                description: "It will pass away",
                img: "",
                endMessage:
                    "Jacob does not get any help. He fails his exams and hise life takes a dark path, which makes him resort to unhealthy behaviours and immense suffering.", 
                    nextWidget: Empty(),
        definition: ""),
        )
    )
  ];
  @override
  Widget build(BuildContext context) {
    if (shouldPop[0]) {
      Navigator.pop(context);
    }
    print('built');
    return ChoicePage(
        currChoice: choices[0],
        choices: newChoices,
        isEnd: false,
        isGood: false);
  }
}

class SUI11 extends StatelessWidget {
  final Choice currChoice;
  SUI11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class SUI12 extends StatelessWidget {
  final Choice currChoice;
  SUI12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}
