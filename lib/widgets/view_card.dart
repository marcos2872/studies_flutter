import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:studies_flutter/routes.dart';

class ViewCard extends StatelessWidget {
  final String title;
  final String description;
  final String hp;
  final String imagePath;
  final String id;

  const ViewCard(
      {super.key,
      required this.title,
      required this.description,
      required this.hp,
      required this.imagePath,
      required this.id
      });

  void goView() {
    Routefly.push(routePaths.view.$id.changes({'id': id}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
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
                    Text(
                      description,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(113, 127, 127, 1)),
                    ),
                    Text(
                      hp,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(113, 127, 127, 1)),
                    ),
                    const Text(
                      'Clique aqui e Saiba Mais',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(113, 127, 127, 1)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      width: 150,
                      image: NetworkImage(imagePath),
                    ),
                  )),
            ],
          ),
        ));
  }
}
