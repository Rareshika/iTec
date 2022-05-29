import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "A nice bath in a not so nice lake",
      description:
          " It was very hot and Aamina felt the urge to cool off. There was a lake nearby, which was quite dirty. Still, she is not sure whether she should do it, what do you suggest?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: PO1()),
  Choice(
      title: "It's still edible, right?",
      description:
          "While on her trip, she got hungry. Aamina tried to take one of her sandwiches out. But, unfortunatelly it fell on the ground. The sandwich is stiil good, isn't it? What is your opinion?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: PO2()),
  Choice(
      title: "It's only water after all...",
      description:
          "fter the long hike, she got home pretty tired. Washing your hands takes 30 seconds, which is way tooo much for Aamina at that time. Yet she still had some remorse, what shall she do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: PO3())
];

class PO extends StatelessWidget {
  final Choice currChoice;
  PO({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class PO1 extends StatelessWidget {
  PO1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: "Let's go for a swim",
        description: "The water is quite dirty, but at least it's cool",
        img: "",
        endMessage: "",
        nextWidget: PO11(
            currChoice: Choice(
                title: "Let's go for a swim",
                description: "The water is quite dirty, but at least it's cool",
                img: "",
                definition: "",
                endMessage:
                    "She decided to take a bath in the lake, it turns out the lake was infected with polio. Unfortunately she got the very deadly disease.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'A bit too green for me',
        description:
            "The water was filthy. There were no fishies swimming around either",
        img: "",
        endMessage: "",
        nextWidget: PO12(
            currChoice: Choice(
                title: 'A bit too green for me',
                description:
                    "The water was filthy. There were no fishies swimming around either",
                img: "",
                definition: "",
                endMessage:
                    "She decided not to take a bath in the lake, even though it was hot, she was able to continue her hike safely.",
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

class PO2 extends StatelessWidget {
  PO2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'A Sandwich is enough',
        description: 'I am hungry, but the bacteria are hungrier',
        img: "",
        endMessage: "",
        nextWidget: PO21(
            currChoice: Choice(
                title: 'A Sandwich is enough',
                description: 'I am hungry, but the bacteria are hungrier',
                img: "",
                definition: "",
                endMessage:
                    "She realized that she had two sandwiches on her after all, even though she was hungry, she fought the temptation and continued her journey.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Sandwiches are tasty',
        description: "I can't waste this good food!",
        img: "",
        endMessage: "",
        nextWidget: PO22(
            currChoice: Choice(
                title: 'Sandwiches are tasty',
                description: "I can't waste this good food!",
                img: "",
                definition: "",
                endMessage:
                    "She realized that just one sandwich wasn't going to cut it so she picked it up from the ground. Sadly, Polio was waiting for her to take the bait…",
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

class PO3 extends StatelessWidget {
  PO3({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: "Washing hands takes too long...",
        description: "There's no way a little water could kill bacteria, right?",
        img: "",
        endMessage: "",
        nextWidget: PO31(
            currChoice: Choice(
                title: "Washing hands takes too long...",
                description: "There's no way a little water could kill bacteria, right?",
                img: "",
                definition: "",
                endMessage: "Those 30 seconds were much, but not thaaat much. She washed her hands and killed all the microbes.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: "Well... It may kill the bacteria",
        description: "Well... It may kill the bacteria",
        img: "",
        endMessage: "",
        nextWidget: PO32(
            currChoice: Choice(
                title: "Well... It may kill the bacteria",
                description: "Well... It may kill the bacteria",
                img: "",
                definition: "",
                endMessage:
                    "Those 30 seconds were tooo much for her to handle so she did not wash her hands. Then and there, she missed her chance to get rid of Polio.",
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

class PO11 extends StatelessWidget {
  final Choice currChoice;
  PO11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class PO12 extends StatelessWidget {
  final Choice currChoice;
  PO12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class PO21 extends StatelessWidget {
  final Choice currChoice;
  PO21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class PO22 extends StatelessWidget {
  final Choice currChoice;
  PO22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[1] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class PO31 extends StatelessWidget {
  final Choice currChoice;
  PO31({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class PO32 extends StatelessWidget {
  final Choice currChoice;
  PO32({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[2] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}
