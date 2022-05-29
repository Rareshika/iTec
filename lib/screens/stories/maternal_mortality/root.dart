import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Better safe than sorry",
      description:
          "Nala thinks that research is not really necessary, because her mother didn't really need it either. Still, something feels wrong. What would you suggest her do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: MM1()),
  Choice(
      title: "The hospital is too far away",
      description:
          "Nala felt like the baby was coming. She had a difficult option before her eyes: Should she go to the hospital or is her bed good enough? What do you say she should do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: MM2()),
];

class MM extends StatelessWidget {
  final Choice currChoice;
  MM({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class MM1 extends StatelessWidget {
  MM1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Information is key',
        description: 'The more you know, the safer you are',
        img: "",
        endMessage: "",
        nextWidget: MM11(
            currChoice: Choice(
                title: 'Information is key',
                description: 'The more you know, the safer you are',
                img: "",
                definition: "",
                endMessage:
                    "Nala decided to do a bit of research on the subject. She learned about all the cautions she must take so that the baby and herself will be fine, and, thankfully, that's how it went down.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: "It'll be fine...",
        description: "I was born ok, so everything will work out",
        img: "",
        endMessage: "",
        nextWidget: MM12(
            currChoice: Choice(
                title: "It'll be fine...",
                description: "I was born ok, so everything will work out",
                img: "",
                definition: "",
                endMessage:
                    "Nala decided that research was unnecessary. Unfortunatelly, she didn't take the right precautions and suffered the consequences.",
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

class MM2 extends StatelessWidget {
  MM2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: "A visit to the doctor",
        description: 'This doctor visit may save me, which is worth the time',
        img: "",
        endMessage: "",
        nextWidget: MM21(
            currChoice: Choice(
                title: "The hospital is the safest place",
                description:
                    "Even though it is a long trip, it should be worth it",
                img: "",
                definition: "",
                endMessage:
                    "Nala reached the hospital in time and the birth went wonderfully, because the doctors were more than prepared for the surgery.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: "No time, no need",
        description: "It's too far away and overrated anyways",
        img: "",
        endMessage: "",
        nextWidget: MM22(
            currChoice: Choice(
                title: "No time, no need",
                description: "It's too far away and overrated anyways",
                img: "",
                definition: "",
                endMessage:
                    "Unfortunatelly, her own bed wasn't good enough and the birth had gone wrong…",
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

class MM11 extends StatelessWidget {
  final Choice currChoice;
  MM11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class MM12 extends StatelessWidget {
  final Choice currChoice;
  MM12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class MM21 extends StatelessWidget {
  final Choice currChoice;
  MM21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class MM22 extends StatelessWidget {
  final Choice currChoice;
  MM22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}
