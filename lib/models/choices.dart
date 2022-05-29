import 'package:flutter/material.dart';
import 'package:itec/models/story.dart';

class Choice {
  final String title;
  final String description;
  final String img;
  final Widget nextWidget;

  Choice({required this.title, required this.description, required this.img, required this.nextWidget});
}

class ChoiceCard extends StatelessWidget {
  final Story story;
  ChoiceCard({required this.story});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: Center(child: Text('${story.title}')),
            subtitle: Center(
              child: Text(
                '${story.definition}',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ),
          Center(
            child: Text(
              '${story.description}',
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
                  // Perform some action
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
