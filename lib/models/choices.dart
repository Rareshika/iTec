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
      color: Color.fromARGB(255, 130, 233, 137),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: Center(
                child: Text(
              '${choice.title}',
              style: TextStyle(fontSize: 21.0),
            )),
            subtitle: Center(
              child: Text(
                '${choice.definition}',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8), fontSize: 16.0),
              ),
            ),
          ),
          Center(
            child: Text(
              '${choice.description}',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7), fontSize: 15.0),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromARGB(255, 16, 164, 50)),
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
    return Padding(
      padding: const EdgeInsets.only(top: 65),
      child: ListView.builder(
        itemCount: choices.length + 3,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Center(
                child: Text(
              '${currChoice.description}:',
              style: TextStyle(fontSize: 17.0),
            ));
          }
          if (index == 1) {
            return Center(
                child: Text(
              'Pick a scenario:',
              style: TextStyle(fontSize: 16.0),
            ));
          }
          if (index == 2) {
            return SizedBox(
              height: 50,
            );
          }
          return ChoiceCard(choice: choices[index - 3]);
        },
      ),
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
            Text(
              endMessage,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: isGood ? Icon(Icons.check) : Icon(Icons.restart_alt),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 54, 196, 58),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              label: isGood
                  ? Text(
                      "Nice, let's try something new!",
                    )
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
      backgroundColor: Color.fromARGB(255, 188, 215, 190),
      appBar: AppBar(
          title: Text('${currChoice.title}'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 54, 196, 58)),
      body: isEnd
          ? EndPage(
              isGood: isGood,
              endMessage: currChoice.endMessage,
            )
          : CardsList(currChoice: currChoice, choices: choices),
    );
  }
}
