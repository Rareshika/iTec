import 'package:flutter/material.dart';
import 'package:itec/models/story.dart';

class Choice {
  final String title;
  final String description;
  final String definition;
  final String img;
  final Widget nextWidget;
  final String endMessage;

  Choice(
      {required this.title,
      required this.description,
      required this.img,
      required this.nextWidget,
      required this.definition,
      required this.endMessage});
}

class ChoiceCard extends StatelessWidget {
  final Choice choice;
  ChoiceCard({required this.choice});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: Center(child: Text('${choice.title}')),
            subtitle: Center(
              child: Text(
                '${choice.definition}',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ),
          Center(
            child: Text(
              '${choice.description}',
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => choice.nextWidget));
                },
                child: const Text('EXPLORE'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardsList extends StatelessWidget {
  final Choice currChoice;
  final List<Choice> choices;

  CardsList({required this.currChoice, required this.choices});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: choices.length + 3,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return CircleAvatar(
            backgroundColor: Colors.red,
          );
        }
        if (index == 1) {
          return Center(child: Text('${currChoice.description}:'));
        }
        if (index == 2) {
          return Center(child: Text('Pick a scenario:'));
        }
        return ChoiceCard(choice: choices[index - 3]);
      },
    );
  }
}

class EndPage extends StatelessWidget {
  final bool isGood;
  final String endMessage;

  EndPage({required this.isGood, required this.endMessage});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(endMessage),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: isGood ? Icon(Icons.check) : Icon(Icons.restart_alt),
              onPressed: () {
                Navigator.pop(context);
              },
              label: isGood
                  ? Text("Nice, let's try something new!")
                  : Text("Well, this isn't the right choice, try again?"),
            ),
          ],
        ),
      ],
    );
  }
}

class ChoicePage extends StatelessWidget {
  final Choice currChoice;
  final List<Choice> choices;
  final bool isEnd;
  final bool isGood;

  ChoicePage(
      {required this.currChoice,
      required this.choices,
      required this.isEnd,
      required this.isGood});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${currChoice.title}'),
        centerTitle: true,
      ),
      body: isEnd
          ? EndPage(
              isGood: isGood,
              endMessage: currChoice.endMessage,
            )
          : CardsList(currChoice: currChoice, choices: choices),
    );
  }
}
