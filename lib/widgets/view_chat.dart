import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:studies_flutter/routes.dart';

class ViewChat extends StatelessWidget {
  final String title;
  // final String description;
  // final String hp;
  final String imagePath;
  final String id;

  const ViewChat(
      {super.key,
      required this.title,
      // required this.description,
      // required this.hp,
      required this.imagePath,
      required this.id});

  void goView() {
    Routefly.push(routePaths.view.$id.changes({'id': id}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(160, 160, 160, 220),
            borderRadius: BorderRadius.circular(12)),
        child: TextButton(
          style: const ButtonStyle(
              enableFeedback: false,
              overlayColor: MaterialStatePropertyAll(Colors.transparent)),
          onPressed: goView,
          child: Row(
            children: [
              Container(
                  width: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                      width: 60,
                      image: NetworkImage(imagePath),
                    ),
                  )),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(113, 127, 127, 1)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
