import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Burger VS Salad",
      description:
          "John has been gaining some weight recently. He's been thinking about what to eat at dinner today. What do you think he should do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: GH1()),
  Choice(
      title: "Is fitness really worth it?",
      description:
          "John’s friends started going to the gym recently and invited him to join them. He starts questioning if it is really worth it.",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: GH2()),
  Choice(
      title: "Am I wasting my time?",
      description:
          "John started high school recently. His colleagues try to befriend him, but fail. He thinks about having a conversation with them.",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: GH3())
];

class GH extends StatelessWidget {
  final Choice currChoice;
  GH({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class GH1 extends StatelessWidget {
  GH1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Burger',
        description: 'The burger looks, pretty good, right?',
        img: "",
        endMessage: "",
        nextWidget: GH11(
            currChoice: Choice(
                title: 'Burger',
                description: 'The burger looks, pretty good, right?',
                img: "",
                definition: "",
                endMessage:
                    "Well…He ate the burger, at first it was delicious, but he kept his bad eating habits and ended up getting fatter.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Salad',
        description: "The salad doesn't look as good",
        img: "",
        endMessage: "",
        nextWidget: GH12(
            currChoice: Choice(
                title: 'Salad',
                description: "The salad doesn't look as good",
                img: "",
                definition: "",
                endMessage:
                    "Well… The salad wasn't nearly as good, but in time, with determination, his good eating habits led to his weight loss, increasing his self-confidence and body image.",
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

class GH2 extends StatelessWidget {
  GH2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'The Gym',
        description: 'It does sound pretty cool',
        img: "",
        endMessage: "",
        nextWidget: GH21(
            currChoice: Choice(
                title: 'The Gym',
                description: 'It does sound pretty cool',
                img: "",
                definition: "",
                endMessage:
                    "So…John decided to go to the gym. Even though it was a rough start he got used to it and kept persevering, ending up with a rocking body.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'No need to lift',
        description: "I am healthy enough...",
        img: "",
        endMessage: "",
        nextWidget: GH22(
            currChoice: Choice(
                title: 'No need to lift',
                description: "I am healthy enough...",
                img: "",
                definition: "",
                endMessage:
                    "So…John decided to not go to the gym with his friends and exercise, thus becoming less confident as time went on.",
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

class GH3 extends StatelessWidget {
  GH3({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Friends??',
        description: 'They might be good for something',
        img: "",
        endMessage: "",
        nextWidget: GH31(
            currChoice: Choice(
                title: 'Friends??',
                description: 'They might be good for something',
                img: "",
                definition: "",
                endMessage:
                    "So…John started talking with them, becoming friends, ending up happier than ever before.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Forever Alone',
        description: "I am happy enough on my own",
        img: "",
        endMessage: "",
        nextWidget: GH32(
            currChoice: Choice(
                title: 'Forever Alone',
                description: "I am happy enough on my own",
                img: "",
                definition: "",
                endMessage:
                    "So…John did not talk to his new classmates and thus he remained alone and sad.",
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

class GH11 extends StatelessWidget {
  final Choice currChoice;
  GH11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class GH12 extends StatelessWidget {
  final Choice currChoice;
  GH12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class GH21 extends StatelessWidget {
  final Choice currChoice;
  GH21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class GH22 extends StatelessWidget {
  final Choice currChoice;
  GH22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class GH31 extends StatelessWidget {
  final Choice currChoice;
  GH31({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class GH32 extends StatelessWidget {
  final Choice currChoice;
  GH32({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}
