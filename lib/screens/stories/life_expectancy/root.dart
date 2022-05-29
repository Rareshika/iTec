import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "When should one stop?",
      description:
          "If he had free time, he would spend it preparing for the exams. As of late he is feeling a bit sick… He starts to wonder, whether overworking is worth it? What do you say?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: LE1()),
  Choice(
      title: "A visit a day, keeps the illness away",
      description:
          "Barry wants to ensure that he will live long and prosper. He heard that you should go to the doctor yearly, but he doesn't know if the hassle is worth it?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: LE2()),
];

class LE extends StatelessWidget {
  final Choice currChoice;
  LE({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class LE1 extends StatelessWidget {
  LE1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Work work work and work',
        description: 'Work, more work and then some more work',
        img: "",
        endMessage: "",
        nextWidget: LE11(
            currChoice: Choice(
                title: 'Work work work and work',
                description: 'Work, more work and then some more work',
                img: "",
                definition: "",
                endMessage:
                    "Slowly, but surely he started feeling the fatigue more and more, until he could barely get out of bed. The stress was a bit too much to handle for a teenager.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Sleep is awesome',
        description: "Well, a little sleep can do no harm...",
        img: "",
        endMessage: "",
        nextWidget: LE12(
            currChoice: Choice(
                title: 'Sleep is awesome',
                description: "Well, a little sleep can do no harm...",
                img: "",
                definition: "",
                endMessage:
                    "He realized that, having no time for yourself is neither healthy nor effective. Now he always takes one hour off before going to bed, cooling off, before another day of hard work.",
                nextWidget: Empty())),
        definition: ""),
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

class LE2 extends StatelessWidget {
  LE2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: "A visit to the doctor",
        description: 'This doctor visit may save me, which is worth the time',
        img: "",
        endMessage: "",
        nextWidget: LE21(
            currChoice: Choice(
                title: "A visit to the doctor",
                description:
                    'This doctor visit may save me, which is worth the time',
                img: "",
                definition: "",
                endMessage:
                    "Barry decided he should go to the doctor after all. He discovered a disease which was easily curable since it was in it's early stages. He was cured shortly after.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: "The queue is way too long",
        description: "Well, I am very busy so I have no time for this...",
        img: "",
        endMessage: "",
        nextWidget: LE22(
            currChoice: Choice(
                title: "The queue is way too long",
                description:
                    "Well, I am very busy so I have no time for this...",
                img: "",
                definition: "",
                endMessage:
                    "After some years, Barry discovered he had a disease which appeared at first, when he was about 18 years old. He might've prevented it if he went to the doctor…",
                nextWidget: Empty())),
        definition: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: choices[1],
        choices: newChoices,
        isEnd: false,
        isGood: false);
  }
}

class LE11 extends StatelessWidget {
  final Choice currChoice;
  LE11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class LE12 extends StatelessWidget {
  final Choice currChoice;
  LE12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class LE21 extends StatelessWidget {
  final Choice currChoice;
  LE21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class LE22 extends StatelessWidget {
  final Choice currChoice;
  LE22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}
